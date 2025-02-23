# IC Contest Previous Test Practice

## 初賽 (Undergraduate):

### 2010 Serial Interface transmitter/receiver
TODO

### 2018 LCD CTRL
#### 困難點
- 計算max, min, average要用pipeline，其他沒什麼問題。
#### TODO
- 還沒有做synthesis。

### 2019 CONV
#### 困難點
- 4 bit integer + 16 bit FP的小數乘法
解決方法： 用40 bit儲存結果，最後取 [35:16]，如果最後一位是1就加一，解決進位問題。
- padding和image取值的index
解決方法：一開始把圖像都讀進來，再做padding，然後運算，但後來發現其實可以直接和testbench的ram讀寫就好，省面積也省時間，index取值用i, j計算，和寫軟體一樣。
reference: https://github.com/derek8955/ic_contest/tree/main/2019_univ_CONV
#### TODO
- 還沒有做synthesis。

### 2021 Geofence
#### 困難點
- 六個點的位置排序
解決方法：以P0為聚集點，用V01, V02, V03, V04, V05五條向量兩兩做外積，用泡沫排序的概念排序五條向量的順序，排序完就會是順時針的關係。
- 向量外積
解決方法：現在是把向量全部用wire列出來，不知道合成面機會不會太多。
#### TODO
- 還沒有做synthesis。

## 複賽 (Undergraduate):
### 2019 FPSDC
TODO