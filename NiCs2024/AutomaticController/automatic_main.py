import serial
import time
import math
import threading
import RPi.GPIO as GPIO
import wiringpi as pi
from library import BMX055
from library import BMP085
from micropyGPS import MicropyGPS

# constant value is capital
MAG_CONST = 8.53  # 地磁気補正用の偏角
CALIBRATION_MILLITIME = 20 * 1000
TARGET_LAT = 38.26095359 # target location
TARGET_LNG = 140.85370900
LAT = 0.0
LNG = 0.0
LED1 = 22
LED2 = 26
HIGH = 1
LOW = 0
M1A = 5
M1B = 6
M4A = 23
M4B = 24
ROTATION_DIFF = 80
MOTOR_COFFICIENT = 0.5

acc = [0.0, 0.0, 0.0]
gyro = [0.0, 0.0, 0.0]
mag = [0.0, 0.0, 0.0]
calibBias = [0.0, 0.0]
calibRange = [1.0, 1.0]
lat = 0.0  # from GPS sensor
lng = 0.0
distance = 0
angle = 0.0
azimuth = 0.0
direction = 0.0
frequency = 50
phase = 0
gps_detect = 0

bmx = BMX055.BMX055()



def main():
    global phase
    global start
    global rest_time
    global gps_detect

    GPIO.setwarnings(False)
    Setup()
    phase = 0

    while True:
        if phase == 0:
            print("phase0")
            time.sleep(2)
            phase = 1

        elif phase == 1:
            calibration()
            print("phase = 1 calibration OK")
            if gps_detect == 1:
                phase = 2

        elif phase == 2:
            print(direction)
            time.sleep(0.1)
            if distance < 5.0:
                phase = 3
                
        elif phase == 3:
            print("phase3 stop")
            print(lat)
            print(lng)
            time.sleep(100)
        

def currentMilliTime():
    return round(time.time() * 1000)


def Setup():
    bmx.setUp()

    GPIO.setmode(GPIO.BCM)
    GPIO.setup(LED1, GPIO.OUT)
    GPIO.setup(LED2, GPIO.OUT)

    getThread = threading.Thread(target=moveMotor_thread, args=())
    getThread.daemon = True
    getThread.setDaemon(True)
    getThread.start()

    dataThread = threading.Thread(target=setData_thread, args=())
    dataThread.daemon = True
    dataThread.setDaemon(True)
    dataThread.start()

    gpsThread = threading.Thread(target=GPS_thread, args=())
    gpsThread.daemon = True
    gpsThread.setDaemon(True)
    gpsThread.start()

    GPIO.output(LED2, HIGH)
    print("Setup OK")


def getBmxData():  # get BMX data
    global acc
    global gyro
    global mag
    acc = bmx.getAcc()
    gyro = bmx.getGyro()
    mag = bmx.getMag()
    for i in range(2):
        mag[i] = (mag[i] - calibBias[i]) / calibRange[i]
    # print(mag)


def calibration():  # calibrate BMX raw data
    global calibBias
    global calibRange
    max = [0.0, 0.0]
    min = [0.0, 0.0]
    max[0] = mag[0]
    max[1] = mag[1]
    min[0] = mag[0]
    min[1] = mag[1]

    complete = False;
    while complete == False:
        before = currentMilliTime()
        after = before
        while (after - before) < CALIBRATION_MILLITIME:
            getBmxData()
            if max[0] < mag[0]:
                max[0] = mag[0]
            elif min[0] > mag[0]:
                min[0] = mag[0]
            elif max[1] < mag[1]:
                max[1] = mag[1]
            elif min[1] > mag[1]:
                min[1] = mag[1]
            after = currentMilliTime()
        if (max[0] - min[0]) > 20 and (max[1] - min[1] > 20):
            print("calibration(): Complete!")
            GPIO.output(LED1, HIGH)
            complete = True
            time.sleep(1)
            calibBias[0] = (max[0] + min[0]) / 2
            calibBias[1] = (max[1] + min[1]) / 2

            calibRange[0] = (max[0] - min[0]) / 2
            calibRange[1] = (max[1] - min[1]) / 2
            GPIO.output(LED1, LOW)
            time.sleep(2)


def calcdistance():  # 距離計算用関
    global distance
    EARTH_RADIUS = 6378136.59
    dx = (math.pi / 180) * EARTH_RADIUS * (TARGET_LNG - lng) 
    dy = (math.pi / 180) * EARTH_RADIUS * (TARGET_LAT - lat)
    distance = math.sqrt(dx * dx + dy * dy)
    #print(distance)
    #time.sleep(1)
   


def calcAngle():  # 角度計算用関数 : north=0 east=90 west = -90
    global angle
    forEAstAngle = 0.0
    EARTH_RADIUS = 6378136.59

    dx = (math.pi / 180) * EARTH_RADIUS * (TARGET_LNG - lng) 
    dy = (math.pi / 180) * EARTH_RADIUS * (TARGET_LAT - lat)
    if dx == 0 and dy == 0:
        forEastAngle = 0.0
    else:
        forEastAngle = (180 / math.pi) * math.atan2(dy, dx)  # arctan
    angle = forEastAngle - 90
    if angle < -180:
        angle += 360
    if angle > 180:
        angle -= 360
    angle = -angle
        # change direction
    # print(angle)
    

def calcAzimuth():  # 方位角計算用関数
    global azimuth

    if mag[0] == 0.0:
        mag[0] = 0.0000001
    azimuth = -(180 / math.pi) * math.atan(mag[1] / mag[0])
    if mag[0] > 0:
        azimuth = 90 + azimuth
    elif mag[0] < 0:
        azimuth = -90 + azimuth
    azimuth = - azimuth
    #print(azimuth)
 


def LED_Checker(num):
    for _ in range(num):
        GPIO.output(LED1, HIGH)
        time.sleep(0.1)
        GPIO.output(LED1, LOW)
        time.sleep(0.1)




# 引数はタイムゾーンの時差と出力フォーマット

def GPS_thread():  # GPSモジュールを読み、GPSオブジェクトを更新する
    global lat
    global lng
    global distance
    global gps_detect
   
    
    s = serial.Serial('/dev/ttyAMA0', 115200)
    s.readline()  # 最初の1行は中途半端なデーターが読めることがあるので、捨てる
    gps = MicropyGPS(9, 'dd')

    while True:
        sentence = s.readline().decode('utf-8')  # GPSデーターを読み、文字列に変換する
        # flush buffer
        if s.in_waiting > 64:
            s.reset_input_buffer()
        # print(sentence)
        if sentence[0] != '$':  # 先頭が'$'でなければ捨てる
            continue
        for x in sentence:  # 読んだ文字列を解析してGPSオブジェクトにデーターを追加、更新する
            gps.update(x)
        lat = gps.latitude[0]
        lng = gps.longitude[0]
        #h = gps.timestamp[0] if gps.timestamp[0] < 24 else gps.timestamp[0] - 24
        #print('%02d:%02d:%04.1f' % (h, gps.timestamp[1], gps.timestamp[2]))
        #print('lat= %2.8f, lng= %2.8f, alt= %f' % (gps.latitude[0], gps.longitude[0], gps.altitude))
                
        if lat > 0:
            gps_detect = 1
        elif lat == 0.0:
            gps_detect = 0
       
            
   

   
def setData_thread():
    while True:
        getBmxData()
        calcAngle()
        calcAzimuth()
        set_direction()
        calcdistance()
       
        
      

        


def moveMotor_thread():
    GPIO.setmode(GPIO.BCM)

    pi.wiringPiSetupGpio()
    GPIO.setup(M1A, GPIO.OUT)
    GPIO.setup(M1B, GPIO.OUT)
    GPIO.setup(M4A, GPIO.OUT)
    GPIO.setup(M4B, GPIO.OUT)

    M1A_pwm = GPIO.PWM(M1A, frequency)
    M1B_pwm = GPIO.PWM(M1B, frequency)
    M4A_pwm = GPIO.PWM(M4A, frequency)
    M4B_pwm = GPIO.PWM(M4B, frequency)

    M1A_pwm.start(0)
    M1B_pwm.start(0)
    M4A_pwm.start(0)
    M4B_pwm.start(0)

    while True:
        if direction == 360.0:  # stop
            M1A_pwm.ChangeDutyCycle(0)
            M1B_pwm.ChangeDutyCycle(0)
            M4A_pwm.ChangeDutyCycle(0)
            M4B_pwm.ChangeDutyCycle(0)
        elif direction == -360.0:  # forward
            M1A_pwm.ChangeDutyCycle(100)
            M1B_pwm.ChangeDutyCycle(0)
            M4A_pwm.ChangeDutyCycle(100)
            M4B_pwm.ChangeDutyCycle(0)
        elif direction == -400.0:  # rotate
            M1A_pwm.ChangeDutyCycle(100)
            M1B_pwm.ChangeDutyCycle(0)
            M4A_pwm.ChangeDutyCycle(10)
            M4B_pwm.ChangeDutyCycle(0)
        elif direction > 0.0 and direction <= 180.0:  # right
            M1A_pwm.ChangeDutyCycle(50 + MOTOR_COFFICIENT * 50)
            M1B_pwm.ChangeDutyCycle(0)
            M4A_pwm.ChangeDutyCycle(10)
            M4B_pwm.ChangeDutyCycle(0)
        elif direction < 0.0 and direction >= -180.0:  # left
            M1A_pwm.ChangeDutyCycle(10)
            M1B_pwm.ChangeDutyCycle(0)
            M4A_pwm.ChangeDutyCycle(50 + MOTOR_COFFICIENT * 50)
            M4B_pwm.ChangeDutyCycle(0)

def set_direction():  # -180<direction<180  #rover move to right while direction > 0
    global direction
    global phase
    
    
    if phase == 0:
        direction = 0

    elif phase == 1:
        direction = -400.0  # right

    elif phase == 2:
            if (angle - azimuth) > 180:
                theta = angle - 360
            elif (azimuth - angle) > 180:
                theta = angle + 360
            else:
                theta = angle
                
            direction = theta - azimuth
            
            if abs(direction) < 5.0:
                direction = -360.0
            elif abs(direction) > 175.0:
                direction = -360.0


    elif phase == 3:
        direction = 360.0
        


if __name__ == '__main__':

    main()
    time.sleep(100)

