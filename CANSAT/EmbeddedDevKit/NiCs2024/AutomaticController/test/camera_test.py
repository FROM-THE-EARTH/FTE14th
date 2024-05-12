from library import detect_corn as dc
from picamera2 import Picamera2
import cv2
import matplotlib.pyplot as plt
import time

if __name__ == "__main__":
    detector = dc.detector()
    roi_img = cv2.imread("/home/karisora/FTE14/NiCs2024/library/roi_red_cone.png")
    
    roi_img = cv2.cvtColor(roi_img, cv2.COLOR_BGR2RGB)
    detector.set_roi_img(roi_img)
    
    fig, axes = plt.subplots(2, 2, figsize=(12, 8))
    start = time.time()
    while True:
        detector.detect_cone()
#         axes[0][0].imshow(detector.input_img)
#         axes[0][1].imshow(detector.projected_img)
#         axes[1][0].imshow(detector.binarized_img)
        print(detector.cone_direction, detector.probability)
        if detector.is_reached:
            print("------ reached cone!!! ------")
    print(time.time() - start)
        
#         plt.imshow(img)
#         plt.pause(0.1)
    print(time.time() - start)