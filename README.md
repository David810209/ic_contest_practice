# IC Contest Previous Test Practice

- design compiler還沒設定好，目前合成出來的面積數字都比較高，跟網路上比起來。

## 初賽

### 2010 UNIVERSITY: Serial Interface Transmitter/Receiver
**TODO**

### 2016 GRADUATED: LBP
#### 困難點
- 計算3*3 window的addr
    - 解決方法：和CNN一樣用i, j計算。
#### performance
- area: 9167.558560
- time: 1746430 ns
- score = 9167.558560 * 1746430 ~= 16000000000
- rank: B (A: score < 12,000,000,000)
- 但我猜有rank A，應該是design compiler的問題，面積合成出來小一點就過了。

### 2018 UNIVERSITY: LCD CTRL
#### 困難點
- 計算 max, min, average 要用 pipeline，其他沒什麼問題。

#### performance
- area: 119244.789918
- warning: 有latch，要調整code
- rank: A(那次的規則是通過gate level simulation就好)

### 2019 UNIVERSITY: CONV
#### Reference
https://github.com/derek8955/ic_contest/tree/main/2019_univ_CONV
#### 問題
- 突然發現跑起來是error，不是正確答案，要找時間解決。
#### 困難點
- 4 bit integer + 16 bit FP 的小數乘法  
    - 解決方法：用 40 bit 儲存結果，最後取 [35:16]，如果最後一位是 1 就加一，解決進位問題。
- Padding 和 image 取值的 index  
    - 解決方法：一開始把圖像都讀進來，再做 padding，然後運算，但後來發現其實可以直接和 testbench 的 RAM 讀寫就好，省面積也省時間，index 取值用 i, j 計算，和寫軟體一樣。  

#### TODO
- 還沒有做 synthesis。

### 2021 UNIVERSITY: Geofence
#### 困難點
- 六個點的位置排序  
    - 解決方法：以 P0 為聚集點，用 V01, V02, V03, V04, V05 五條向量兩兩做外積，用泡沫排序的概念排序五條向量的順序，排序完就會是順時針的關係。
- 向量外積  
    - 解決方法：現在是把向量全部用 wire 列出來，不知道合成面積會不會太多。

#### Performance
- area: 156566.998499 
- rank: B (A: area < 22000)
- 當初寫的時候沒看等級條件，不知道條件只看面積，根本不看時間，所以我都寫組合邏輯，結果面積超級大，有時間要整個重寫。

### 2022 UNIVERSITY: JAM
#### 困難點
- 要實現演算法，釐清過程，釐清之後還好，但cycle數跟面積限制都很極限，要謹慎的寫。

#### Performance
- area: 12746.765029
- time: 593427 cycles
- rank: B (A: area < 10000, time < 600000 cycles)
- 但我猜有rank A，應該是design compiler的問題。

## 複賽 (Undergraduate)

### 2019 FPSDC
**TODO**