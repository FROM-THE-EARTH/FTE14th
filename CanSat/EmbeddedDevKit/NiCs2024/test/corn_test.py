# テスト用のコード
from library import detect_corn as dc 
import cv2
import numpy as np

# 進行方向
direction = 0.0
# コーン検出器
detector = dc.detector()
# 抽出したい領域の画像読み込み & 検出器にセット
roi_img = cv2.imread("./dataset/roi_red_v2.jpg") # ここは適宜変えてください
detector.set_roi_img(roi_img)

detector.IS_RASPBERRY_PI = True # for raspberry pi

def main() -> None:
    global direction
    while True:
        isDetected, isReached, cone_direction = detectCorn() # 順に検出できたか, 到達したか, コーンの方向(左が正, 中央が0)
        # 指定した方向へ向かう
        # setDirection(cone_direction)

# for windows
# def getCameraInput(raw_img) -> np.ndarray:
#     img = raw_img
#     img = cv2.blur(img, (3, 3))
#     noise = np.random.normal(loc = 0, scale = 3, size = img.shape)
#     img = (noise + img).astype(np.uint8)
#     return img   

def detectCorn() -> tuple:
    global detector
    # for windows
    # # 生データ読み込み
    # raw_img = cv2.imread("./dataset/test_9.png")
    # detector.detect_cone(getCameraInput(raw_img))
    detector.detect_cone() # カメラの入力画像を自動で取得
    
    if detector.probability == np.inf:
        print("ERROR : failed to detect color cone !")
        return (False, False, 0) # if not detected
    
    print("centroid of cone : ", detector.centroid)
    print("cone was detected on the " + ("left" if detector.cone_direction < 0.5 else "right") )
    
    # コーンの向き
    # main2.pyを準用して左を正としたが, 適宜調整.
    # また, 取り得る区間は (-angle_of_view/2, angle_of_view/2) とする.
    angle_of_view = 140 # 画角 (> 0)
    cone_direction = -(detector.cone_direction - 0.5) * angle_of_view
    
    print("cone direction : ", cone_direction)
    
    return (True, detector.is_reached, cone_direction)
    


if __name__ == "__main__":
    main()