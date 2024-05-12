"""
cansat remote control by  bluetooth

move_forward : left-stick front
move_back : left-stick back
move_right : left-stick front and right-stick right
move_left :  left-stick front and right-stick left
stop : cross button

FTE14th with NICs cansat contest
"""

import serial
import pygame
import time
import RPi.GPIO as GPIO
import wiringpi as pi

M1A = 5
M1B = 6
M4A = 23
M4B = 24
Rotation_Diff_Ratio = 70
HIGH = 1
LOW = 0

GPIO.setmode(GPIO.BCM)

pi.wiringPiSetupGpio()
GPIO.setup(M1A, GPIO.OUT)
GPIO.setup(M1B, GPIO.OUT)
GPIO.setup(M4A, GPIO.OUT)
GPIO.setup(M4B, GPIO.OUT)

frequency = 50

M1A_pwm = GPIO.PWM(M1A, frequency)
M1B_pwm = GPIO.PWM(M1B, frequency)
M4A_pwm = GPIO.PWM(M4A, frequency)
M4B_pwm = GPIO.PWM(M4B, frequency)

M1A_pwm.start(0)
M1B_pwm.start(0)
M4A_pwm.start(0)
M4B_pwm.start(0)

pygame.init()
j = pygame.joystick.Joystick(0)
j.init()

if __name__ == '__main__':
    try:
        while True:
            events = pygame.event.get()
            for event in events:
                print(event)
                if event.type == pygame.JOYBUTTONDOWN:
                    if j.get_button(2):  # sankaku
                        print("test")
                        M1A_pwm.ChangeDutyCycle(100)
                        M1B_pwm.ChangeDutyCycle(0)
                        M4A_pwm.ChangeDutyCycle(100)
                        M4B_pwm.ChangeDutyCycle(0)

                    elif j.get_button(0):  # batu
                        print("stop")
                        M1A_pwm.ChangeDutyCycle(0)
                        M1B_pwm.ChangeDutyCycle(0)
                        M4A_pwm.ChangeDutyCycle(0)
                        M4B_pwm.ChangeDutyCycle(0)

                elif event.type == pygame.JOYAXISMOTION:  # ChangeDutyCycle(0~100)
                    x = j.get_axis(1)
                    y = j.get_axis(3)
                    if x > 0:  # back
                        if y > 0:  # right
                            M1A_pwm.ChangeDutyCycle(abs(x) * 100)
                            M1B_pwm.ChangeDutyCycle(0)
                            M4A_pwm.ChangeDutyCycle(abs(abs(x) * 100 - Rotation_Diff_Ratio * abs(y)))
                            M4B_pwm.ChangeDutyCycle(0)
                        elif y <= 0:
                            M1A_pwm.ChangeDutyCycle(abs(abs(x) * 100 - Rotation_Diff_Ratio * abs(y)))
                            M1B_pwm.ChangeDutyCycle(0)
                            M4A_pwm.ChangeDutyCycle(abs(x) * 100)
                            M4B_pwm.ChangeDutyCycle(0)
                    elif x < 0:
                        if y > 0:  # right
                            M1A_pwm.ChangeDutyCycle(0)
                            M1B_pwm.ChangeDutyCycle(abs(x) * 100)
                            M4A_pwm.ChangeDutyCycle(0)
                            M4B_pwm.ChangeDutyCycle(abs(abs(x) * 100 - Rotation_Diff_Ratio * abs(y)))
                        elif y <= 0:
                            M1A_pwm.ChangeDutyCycle(0)
                            M1B_pwm.ChangeDutyCycle(abs(abs(x) * 100 - Rotation_Diff_Ratio * abs(y)))
                            M4A_pwm.ChangeDutyCycle(0)
                            M4B_pwm.ChangeDutyCycle(abs(x) * 100)
                    elif x == 0:
                        if y > 0:  # right
                            M1A_pwm.ChangeDutyCycle(0)
                            M1B_pwm.ChangeDutyCycle(100 * abs(y))
                            M4A_pwm.ChangeDutyCycle(100 * abs(y))
                            M4B_pwm.ChangeDutyCycle(0)
                        elif y < 0:
                            M1A_pwm.ChangeDutyCycle(100 * abs(y))
                            M1B_pwm.ChangeDutyCycle(0)
                            M4A_pwm.ChangeDutyCycle(0)
                            M4B_pwm.ChangeDutyCycle(100 * abs(y))
                        elif y == 0:
                            M1A_pwm.ChangeDutyCycle(0)
                            M1B_pwm.ChangeDutyCycle(0)
                            M4A_pwm.ChangeDutyCycle(0)
                            M4B_pwm.ChangeDutyCycle(0)

    except KeyboardInterrupt:
        print("end")
        GPIO.cleanup()
        M1A_pwm.ChangeDutyCycle(0)
        M1B_pwm.ChangeDutyCycle(0)
        M4A_pwm.ChangeDutyCycle(0)
        M4B_pwm.ChangeDutyCycle(0)

        j.quit()

