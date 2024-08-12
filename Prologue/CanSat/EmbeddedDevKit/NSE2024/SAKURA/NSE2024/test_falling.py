import serial
import time
import math
import threading
import datetime
import pigpio
import csv
import os
import cv2
import RPi.GPIO as GPIO
import wiringpi as pi
from library import BMX055
from library import BMP085
from micropyGPS import MicropyGPS
from library import detect_corn as dc
from picamera2 import Picamera2
import matplotlib.pyplot as plt



# 定数　上書きしない
MAG_CONST = 8.53  # 地磁気補正用の偏角
CALIBRATION_MILLITIME = 20 * 1000
TARGET_LAT = 37.86927333
TARGET_LNG = 138.93992483
TARGET_ALTITUDE = 20
DATA_SAMPLING_RATE = 0.00001
ALTITUDE_CONST1 = 30
ALTITUDE_CONST2 = 5
SERVO_PIN = 13
LED1 = 16
LED2 = 20
HIGH = 1
LOW = 0
M1A = 5





M1B = 6
M4A = 13
M4B = 19
ROTATION_DIFF = 80
MOTOR_COFFICIENT = 0.5

# 変数
acc = [0.0, 0.0, 0.0]
gyro = [0.0, 0.0, 0.0]
mag = [0.0, 0.0, 0.0]
calibBias = [0.0, 0.0]
calibRange = [1.0, 1.0]
lat = 0.0  # from GPS sensor
lng = 0.0
alt = 0.0
maxAlt = 0.0
minAlt = 0.0
pres = 0.0
distance = 0
angle = 0.0
azimuth = 0.0
direction = 0.0
frequency = 50
phase = 0
gps_detect = 0
cone_direction = 0
cone_probability = 0
restTime = 0.0


bmx = BMX055.BMX055()
bmp = BMP085.BMP085()
servo = pigpio.pi()

nowTime = datetime.datetime.now()
fileName = '/home/karisora/FTE14/NiCs2024/log/testlog_' + nowTime.strftime('%Y-%m%d-%H%M%S') + '.csv'


def main():
    global phase
    global restTime
    global start
    global gps_detect

    GPIO.setwarnings(False)
    Setup()
    phase = 0
    n = 0

    while True:
        phase = 0
        


def currentMilliTime():
    return round(time.time() * 1000)


def Setup():
    global detector
    bmx.setUp()

    GPIO.setmode(GPIO.BCM)
    GPIO.setup(LED1, GPIO.OUT)
    GPIO.setup(LED2, GPIO.OUT)
    


    with open(fileName, 'a') as f:
        writer = csv.writer(f)
        writer.writerow(['MilliTime','AccX','AccY','AccZ','GyroX','GyroY','GyroZ','MagX','MagY','MagZ','Fall'])
        
    dataThread = threading.Thread(target=setData_thread, args=())
    dataThread.daemon = True
    dataThread.setDaemon(True)
    dataThread.start()

   
    GPIO.output(LED2, HIGH)
    print("Setup OK")


def getBmxData():  # get BMX data
    global acc
    global gyro
    global mag
    global fall
    acc = bmx.getAcc()
    gyro = bmx.getGyro()
    mag = bmx.getMag()
    fall = math.sqrt(acc[0]*acc[0]+acc[1]*acc[1]+acc[2]*acc[2] )
    for i in range(2):
        mag[i] = (mag[i] - calibBias[i]) / calibRange[i]



def setData_thread():
    while True:
        getBmxData()
        with open(fileName, 'a', newline="") as f:
            writer = csv.writer(f)
            writer.writerow([currentMilliTime(), acc[0], acc[1], acc[2], gyro[0], gyro[1], gyro[2], mag[0], mag[1], mag[2], fall])
        time.sleep(DATA_SAMPLING_RATE)



            


if __name__ == '__main__':
    main()
    time.sleep(100)

