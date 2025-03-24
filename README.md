# IC Contest Previous Test Practice

---

## 總覽表格

| 題目 | 年級 | Area | Time / Cycle | Score | Rank | 備註 |
|------|------|------|-------------|-------|------|------|
| 2010 Serial Interface Transmitter/Receiver | Univ | - | - | - | - | TODO |
| 2016 LBP | Grad | 4447.19 | 1,746,430 ns | 7,766,706,032 | A | - |
| 2018 LCD CTRL | Univ | 71645.56 | - | - | A | 有 latch，需調整 |
| 2019 CONV | Univ | - | - | - | - | 目前測試有 error，需修正 |
| 2021 Geofence | Univ | 92506.60 | - | - | B | 面積過大，需重寫 |
| 2022 JAM | Univ | 6499.34 | 593,427 cycles | - | A | - |
| 2019 FPSDC | Univ | - | - | - | - | TODO |

---

## 初賽 (Preliminary Round)

### 2010 UNIVERSITY: Serial Interface Transmitter/Receiver
**TODO**  

---

### 2016 GRADUATED: LBP

#### 困難點
- **計算 3×3 window 的 address**
  - 解決方法：和 CNN 一樣，用 `i, j` 來計算。

#### Performance
- **Area**: `4447.188036`
- **Time**: `1,746,430 ns`
- **Score**: `4447.188036 × 1,746,430 ≈ 7,766,706,032`
- **Rank**:A (**A 等級條件：Score < 12,000,000,000**)

---

### 2018 UNIVERSITY: LCD CTRL

#### 困難點
- **計算 max、min、average 需要 pipeline**，其餘部分相對簡單。

#### Performance
- **Area**: `71645.556069`
- **Warning**: 目前有 **latch**，需要調整 code。
- **Rank**: A （當時規則：通過 Gate-Level Simulation 即可）

---

### 2019 UNIVERSITY: CONV

#### 參考資料
[GitHub Repository](https://github.com/derek8955/ic_contest/tree/main/2019_univ_CONV)

#### 問題
- **目前測試發現運行時發生 error，需進一步 debug。**

#### 困難點
- **4-bit Integer + 16-bit Floating Point 小數乘法**
  - 解決方法：用 **40-bit** 儲存結果，最後取 `[35:16]`，若最後一位是 `1` 就加 `1`，解決進位問題。
- **Padding 和 Image Index 計算**
  - 解決方法：
    1. 最初方案：將圖像完整讀入後再進行 Padding 和運算。
    2. 優化方案：直接與 Testbench RAM 讀寫，省面積、省時間，並使用 `i, j` 計算 Index，類似軟體設計方式。

#### TODO
- 尚未進行 **Synthesis**。

---

### 2021 UNIVERSITY: Geofence

#### 困難點
- **六個點的排序**
  - 解決方法：
    1. 以 `P0` 為中心點。
    2. 計算 `V01, V02, V03, V04, V05` 這五條向量。
    3. 使用「泡沫排序 (Bubble Sort)」概念，透過向量外積排序，使其呈現順時針排列。
- **向量外積**
  - 目前將向量全部以 `wire` 方式列出，可能導致面積過大。

#### Performance
- **Area**: `92506.603148`
- **Rank**: B (**A 等級條件：Area < 22,000**)
- **問題**：當初未考慮排名條件，寫成組合邏輯，導致面積過大，需重寫。

---

### 2022 UNIVERSITY: JAM

#### 困難點
- **演算法設計**：需釐清過程，寫 Code 時需特別注意 Cycle 數與面積限制。

#### Performance
- **Area**: `6499.344553`
- **Time**: `593,427 cycles`
- **Rank**: A (**A 等級條件：Area < 10,000, Time < 600,000 cycles**)

---

## 複賽 (Final Round) - Undergraduate

### 2019 FPSDC
**TODO**

---
