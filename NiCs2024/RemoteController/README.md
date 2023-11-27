# カンサット<リモート操作手順>

## 1 起動
```
sudo service webiopi start
```
## 2 web立ち上げ

(http://ラズパイのローカルIP:8000/motor/motor.html)

IPadressは使ってるwifiのもの
name:webiopi
pass:raspberry


## 3 関連コマンド
```
sudo systemctl restart webiopi

sudo systemctl status webiopi

sudo systemctl stop webiopi

ifconfig
```
