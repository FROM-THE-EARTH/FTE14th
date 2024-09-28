import cv2
import numpy as np
from picamera2 import Picamera2 # camera
import matplotlib.pyplot as plt


picam2 = Picamera2()
cam_conf = picam2.create_preview_configuration({"format" : "BGR888"})
picam2.configure(cam_conf)
picam2.start()

input_img = cv2.cvtColor(picam2.capture_array(), cv2.COLOR_RGB2BGR)

picam2.capture_file("./log/captured_roi_img.png")