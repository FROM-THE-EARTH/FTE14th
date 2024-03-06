# from curses import echo
import serial
import threading
import time
import RPi.GPIO as GPIO
from library.micropyGPS import micropyGPS



def GPS_test():  # GPSモジュールを読み、GPSオブジェクトを更新する
    global lat
    global lng
    s = serial.Serial('/dev/serial0', 115200, timeout=10)
    s.readline()  # 最初の1行は中途半端なデーターが読めることがあるので、捨てる
    while True:
        sentence = s.readline().decode('unicode_escape')  # GPSデーターを読み、文字列に変換する
        if sentence[0] != '$':  # 先頭が'$'でなければ捨てる
            continue
        for x in sentence:  # 読んだ文字列を解析してGPSオブジェクトにデーターを追加、更新する
            gps.update(x)
        lat = gps.latitude[0]
        lng = gps.longitude[0]
        print(lat)
        print(lng'/n')
        if mainProgramFlag == False:
            break
    print('setGpsData()T1: Closed')