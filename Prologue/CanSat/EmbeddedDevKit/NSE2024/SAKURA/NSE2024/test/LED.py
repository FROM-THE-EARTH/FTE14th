import time
import RPi.GPIO as GPIO


LED0 = 25
LED1 = 8
LED2 = 7

GPIO.setmode(GPIO.BCM)
GPIO.setup(LED0, GPIO.OUT)
GPIO.setup(LED1, GPIO.OUT)
GPIO.setup(LED2, GPIO.OUT)


while True:
  GPIO.output(LED0,1)
  time.sleep(0.5)
  GPIO.output(LED0,0)
  GPIO.output(LED1,1)
  time.sleep(0.5)
  GPIO.output(LED1,0)
  GPIO.output(LED2,1)
  time.sleep(0.5)
  GPIO.output(LED2,0)
