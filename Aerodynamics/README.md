# 空力班お助けプログラム
シミュレーション系審査書に使えるプログラムを纏めました.  
基本的にColaboratory上で運用することを想定しているので, 適宜DL & ColabにUpしてください.  
Cobab専用のライブラリもインポートしているのでローカルでは上手く動かないと思います.

## n方位抽出
Prologue等の落下分散から, 北基準n方位の風向を抽出するためのプログラム.
ついでに風向範囲を [0, 360) におさめてソートします.

使い方は, **予め風向・風速の列名**をコード上で指定しておき, プログラムを実行してからPrologueのsummary.csvをアップロードするだけです (複数アップロード可).  

このプログラムは, Prologueが打上方位角基準の角度しか出力してくれないため, 北基準16 (8) 方位を得るために作りました.  
PrologueのScatterの刻み角度を適当に細かく (e.g., 2.5deg) に設定すればいい感じに使えます.

## scatter_visualization_v2
Prologue等の落下分散から, 分散図を書くためのプログラム.

使い方は, 
1. 実行前に**必ず上から2つのプログラムを順に実行**する.
2. 左側のタブ (default) からファイルを開き, **射場の緯度・経度が書かれたファイルを予めアップロード**しておく.  
   入力規則は "ユーザへ" も参照.
4. 射場座標の**ファイル名**と, 分散の書かれたファイル内の**風向と風速の列名**をメインコード上で指定する.
5. 地図の**ズームレベルを指定**する (NSE陸で15, 海で12.5程度). 必要に応じて点を描画する際の大きさを指定する.
6. メインのプログラムを実行し, ファイル選択ボタンから**分散の書かれたファイルをアップ**する.
7. draw_scatter_map内のDL_imgをTrueにすれば自動でDLされます.

**射場緒元は先**に, **落下分散は後**にファイルをアップしている点に注意です.

このプログラムは分散図を作成するにあたり, 同じ風速で繋いで円形で表示したい + 毎回同じ拡大率で切り取りたい という目的を実現するために作成しました.  

ついでに, 基準点から〇mを落下可能域として指定された場合に備えて基準点から〇mの円周点データを生成するプログラムを下に付しています.

## GO_NOGO_table
Prologue等の落下分散から, 落下可能域に落下するか否かの可否を出力するためのプログラム.

使い方は, ほぼscatter_visualization_v2と同じで, 同じく**射場緒元は先**に, **落下分散は後**にファイルをアップする点に注意です.  
ただし, 射場データの内, 射点などの点情報は無視されます.  
アップするファイル・出力されるファイルの形式は "ユーザへ" を参照ください.

このプログラムは先のscatter_visualization_v2を改良し, 指定された範囲に落下したか否かを判定しています.  
球面上のポリゴンを平面に引き伸ばして判定を行っているため, **落下可能域を表現するポリゴンが荒い (大きさに対して点の数が少ない) 場合は境界部の判定に誤差を生ずる可能性があります**.  
(NSE2024陸の完成報告書はこれで通しているので明らかな問題はないと思われます)

## BarrowmanFlow
バロウマン法によって各種空力パラメタを算出するプログラム.  
基本的に[BarrowmanFlow](https://github.com/sus304/BarrowmanFlow)をColaboratory上で運用できるように移植しただけです.  
主にピッチ・ヨー, ロール減衰モーメント係数などを見積もりたいときに利用してください.  
ただし, CFDを用いて計算して方がたぶん正確です. 参考までにピッチ・ヨー減衰モーメント係数 $C_{mq}$ とロール減衰モーメント係数 $C_{mp}$ の計算式は,
```math
C_{mq} = -4\sum_i\left(\frac{C_{n\alpha i}}{2}\right)\left(\frac{C_{pi} - C_g}{L}\right)^2,\qquad
C_{mp} = -8\times\frac{\left(span + d/2\right)^4}{\left(\pi L^2 \pi d^2/4\right)}.
```
ここで各 $i$ は各コンポーネントを表し, $C_{n\alpha i}$は法線力係数傾斜, $C_{pi}$は圧力中心(機体先端から), $C_g$は乾燥重心(機体先端から), $L$は機体全長, $span$はフィンスパン長, $d$は機体径.  
詳細は11期機体班/空力設計班/空力資料_CFDの中の "2022伊豆大島共同打上実験_空力設計時のパラメータ算出方法について.pdf" を参照ください.
