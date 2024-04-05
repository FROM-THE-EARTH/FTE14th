# encoding : utf-8
import cv2
import numpy as np
from picamera2 import Picamera2 # camera

class detector():
    # コンストラクタ
    # 引数
    #   roi : 対象領域
    def __init__(self):        
        # 諸変数のイニシャライズ
        self.cone_ratio = 33/70 # コーンの縦横比
        self.ratio_thresh = 0.1 # 許容される誤差率
        
        self.input_img = None
        self.projected_img = None
        self.binarized_img = None
        self.detected = None
        self.probability = None
        self.centroids = None
        self.cone_direction = None
        self.is_reached = None
        self.picam2 = None # camera obj.
    
    # 対象領域をセット
    def set_roi_img(self, roi):
        # 対象領域のヒストグラムをあらかじめ算出
        self.__roi = roi
        self.__roi_hsv = cv2.cvtColor(self.__roi, cv2.COLOR_BGR2HSV)
        self.__roi_hist = cv2.calcHist([self.__roi_hsv], [0, 1], None, [180, 256], [0, 180, 0, 256])
    
    # コーンの縦横比 (横/縦) を設定
    def set_cone_ratio(self, ratio):
        self.cone_ratio = ratio
    
    # get camera img
    def __get_camera_img(self):
        if self.picam2 is None:
            self.picam2 = Picamera2()
            cam_conf = self.picam2.create_preview_configuration()
            self.picam2.configure(cam_conf)
            self.picam2.start()
        self.input_img = cv2.blur(self.picam2.capture_array(), (5, 5))
        
        
    # 検出
    def detect_cone(self):
        self.__get_camera_img()
        self.__back_projection()
        self.__binarization()
        self.__find_cone_centroid()
    
    # 逆投影法を用いて, 興味領域のヒストグラムにマッチする領域を抽出
    def __back_projection(self):
        img_hsv = cv2.cvtColor(self.input_img, cv2.COLOR_BGR2HSV)
        cv2.normalize(self.__roi_hist, self.__roi_hist, 0, 255, cv2.NORM_MINMAX)
        self.projected_img =  cv2.calcBackProject([img_hsv], [0, 1], self.__roi_hist, [0, 180, 0, 256], 1)
    
    # 二値化・モルフォロジー変換 (クロージング)
    # gray : 入力画像 (グレースケール)
    def __binarization(self):
        ret, th = cv2.threshold(self.projected_img, 0, 255, cv2.THRESH_BINARY+cv2.THRESH_OTSU) # 大津の二値化
        self.binarized_img = cv2.morphologyEx(th, cv2.MORPH_DILATE, cv2.getStructuringElement(cv2.MORPH_RECT, (25, 25))) # モルフォロジー変換
    
    # ラベリング処理によって, 特定の比の長方形 (i.e. カラーコーン) を探し, その重心と確からしさを返す
    # 確からしさ abs(長方形の縦横比 - コーンの縦横比) でとりあえず定義. 小さいほど良い
    def __find_cone_centroid(self):
        imgSize = len(self.binarized_img) * len(self.binarized_img[0])
        nlabels, labels_img, stats, centroids = cv2.connectedComponentsWithStats(self.binarized_img.astype(np.uint8)) # バウンディングボックス取得
        probabilities = np.abs(stats[:, cv2.CC_STAT_WIDTH] / stats[:, cv2.CC_STAT_HEIGHT] - self.cone_ratio)
        # error if centroid of the img is black
        for idx in range(nlabels):
            if self.binarized_img[int(centroids[idx][1]), int(centroids[idx][0])] == 0:
                probabilities[idx] = 1000
        # 最も形の領域を探す
        idx_stable = np.argmin(probabilities)
        self.detected = stats[idx_stable, :]
        self.centroids = centroids[idx_stable]
        self.probability = probabilities[idx_stable]
        self.cone_direction = self.centroids[0] / self.binarized_img.shape[1] # right : 1, left : 0
        self.is_reached = True if self.detected[cv2.CC_STAT_AREA] == imgSize and self.probability < 1000  else False
        
        # for i in range(len(stats)):
        #     if stats[i][cv2.CC_STAT_AREA] == imgSize: # 入力画像全体を長方形として検出してしまった場合
        #         continue
        #     self.detected.append(stats[i])
        #     self.centroids.append(centroids[i])
        #     self.probability.append(np.clip(1 - np.abs((stats[i, cv2.CC_STAT_WIDTH] / stats[i, cv2.CC_STAT_HEIGHT]) - self.cone_ratio) , 0, 1))
