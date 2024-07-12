# FTE14th CanSatの環境構築
## 1. マイコン・センサー
### CanSat : NSE2024機体 SAKURA  

|  デバイス  |          型番           |
|:------:|:---------------------:|
|  マイコン  | Raspberry Pi  Zero 2W |
| 9軸センサ  |        BMX055         |
|  GPS   |        GEP-M10        |
| 気圧センサ  |        BMP180         |
| camera |     Raspi-camera      |

## 2. Install Raspberry Pi  OS
### 2.1 Version
#### OS : Raspberry Pi OS 32bit Bullseye Full  
#### Python : python3.9

Raspberry Pi はMicroSDにOSを入れてからRaspberry Piに電源を入れることで起動することができます。まずはこれらをインストールします。

#### 1. Raspberry Pi Imager を使用しRaspberrypiにOSを書き込む
#### [Install Raspi Imager](https://www.indoorcorgielec.com/resources/raspberry-pi/raspberry-pi-os%E3%81%AE%E3%82%A4%E3%83%B3%E3%82%B9%E3%83%88%E3%83%BC%E3%83%AB/).
#### 2. OSからRaspberry Pi OS (other)を選択し上と同じversionのものを選ぶ
#### 3. インストール後、raspiにセットして起動



## 3 Update and Upgrade
RaspberryPiのセットアップが完了したら、ターミナルから必要なパッケージのインストールを行います.

システムのすべてのパッケージをアップグレード
```
sudo apt-get upgrade
```

ローカルのパッケージリストの最新化
```
sudo apt-get update
```








 