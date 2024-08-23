import re
import pandas as pd
import numpy as np
import pathlib as path
import os

if __name__ == "__main__":
       
    # 実行前入力
    file_name = "14_tanpopo_flight_data.TXT" # flightデータの相対パス
    
    # main
    file_path = path.Path(file_name).resolve()
    if not file_path.exists():
        print(f"given file name : {file_name} is not found!")
        exit()
    
    
    logs = [[]] # フライトデータ, startが測定開始の合図
    with open(file_path) as f:
        for line in f:
            line = str.strip(line).replace(",", " ").replace("=", " ") # 改行命令は端折る, カンマ区切りと＝を空白に
            line = line.split()
            if line == ["start"]:
                logs.append([]) # 末尾に空の配列を追加. これに以降のデータを書き込む
            else:
                logs[-1].append(line) # ログを読み取る
    
    
    
    for log, idx in zip(logs, range(len(logs))):
        df = pd.DataFrame(log)
        out_path = file_path.parent.joinpath(str(idx))
        if not out_path.exists():
            os.mkdir(out_path)
        data_cats = list(set(df.iloc[:, 0]))
        
        for cat in data_cats:
            df[df.iloc[:, 0] == cat].to_csv(out_path / f"{cat}_{idx}.csv")
            
        