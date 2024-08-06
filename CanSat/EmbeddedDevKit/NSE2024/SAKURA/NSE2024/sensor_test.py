from library import BMX055
from library import BMP085
import time
import numpy as np


bmx = BMX055.BMX055()
#bmp = BMP085.BMP085()

bmx.setUp()

# a = np.array([])
# 
# for var in range(500):
#     alt = bmp.read_altitude()
#     a = np.append(alt, a)
# print(np.mean(a))
# 
# time.sleep(5)
# a = np.array([])
print("start")
    
# for var in range(500):
#     alt = bmp.read_altitude()
#     a = np.append(alt, a)
#     
# print(np.mean(a))
while True:
#     alt = bmp.read_altitude()
#     print(alt)
     acc = bmx.getAcc()
#      gyro = bmx.getGyro()
     mag = bmx.getMag()
     print(acc)
     #print(gyro)
     print(mag)
     print("-----------")
