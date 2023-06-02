# Praktikum Probstat Modul 2

## Identitas

| Nama          | NRP           | Kelas |
| ---           | ---           | ---   |
| Nadif Mustafa | 5025211127    | C     |

## Daftar Isi
- [Praktikum Probstat Modul 2](#praktikum-probstat-modul-2)
  - [Identitas](#identitas)
  - [Daftar Isi](#daftar-isi)
  - [Soal 1](#soal-1)
    - [1A](#1a)
    - [1B](#1b)
    - [1C](#1c)
  - [Soal 2](#soal-2)
    - [2A](#2a)
    - [2C](#2c)
  - [Soal 3](#soal-3)
    - [3A](#3a)
    - [3B](#3b)
    - [3C](#3c)
  - [Soal 4](#soal-4)
    - [4A](#4a)
    - [4B](#4b)
    - [4C](#4c)
  - [Soal 5](#soal-5)
    - [5A](#5a)
    - [5B](#5b)
    - [5C](#5c)
    - [5D](#5d)
    - [5E](#5e)
    - [5F](#5f)
    - [5G](#5g)
    - [5H](#5h)
    - [Hasil](#hasil)

## Soal 1

Seorang peneliti melakukan penelitian mengenai pengaruh aktivitas *A* terhadap kadar saturasi oksigen pada manusia. Peneliti tersebut mengambil sampel sebanyak 9 responden. Pertama, sebelum melakukan aktivitas *A*, peneliti mencatat kadar saturasi oksigen dari 9 responden tersebut. Kemudian, 9 responden tersebut diminta melakukan aktivitas *A*. Setelah 15 menit, peneliti tersebut mencatat kembali kadar saturasi oksigen dari 9 responden tersebut. Berikut data dari 9 responden mengenai kadar saturasi oksigen sebelum dan sesuah melakukan aktivitas.

| **Responden** | **X**         | **Y**         |
| ---           | ---           | ---           |
| <center> 1    | <center> 78   | <center> 100  |
| <center> 2    | <center> 75   | <center> 95   |
| <center> 3    | <center> 67   | <center> 70   |
| <center> 4    | <center> 77   | <center> 90   |
| <center> 5    | <center> 70   | <center> 90   |
| <center> 6    | <center> 72   | <center> 90   |
| <center> 7    | <center> 78   | <center> 89   |
| <center> 8    | <center> 70   | <center> 100  |
| <center> 9    | <center> 77   | <center> 100  |

Berdasarkan data pada tabel di atas, diketahui kadar saturasi oksigen dari responden ke-3 ketika belum melakukan aktivitas *A* sebanyak 67, dan setelah melakukan aktivitas *A* sebanyak 70.

### 1A

> **Carilah Standar Deviasi dari data selisih pasangan pengamatan tabel di atas**

Berikut adalah script R untuk soal 1A :

```R
install.packages("BSDA")
library(BSDA)

# A
# Standar Deviasi dari data selisih pasangan pengamatan

x <- c(78, 75, 67, 77, 70, 72, 78, 70, 77)
y <- c(100, 95, 70, 90, 90, 90, 89, 100, 100)

diff <- y - x
sd(diff)
```

- `x :` kadar saturasi oksigen responden sebelum melakukan aktivitas *A*
- `y :` kadar saturasi oksigen responden setelah melakukan aktivitas *A*
- `diff :` selisih data saturasi oksigen sebelum dan sesudah melakukan aktivitas *A*
- `sd() :` function untuk mencari standar deviasi dari selisih

<br>

Berikut adalah hasilnya :

```
> sd(diff)
[1] 7.838651
```

### 1B

> **Carilah nilai t (p-value)**

Berikut adalah script R untuk soal 1A :

```R
# B
# Nilai t (p-value)

t.test(x, y, paired=TRUE)
```

- `t.test() :` function untuk melakukan uji t-test.
- `paired=TRUE :` salah satu argumen dari function `t.test()` untuk menandakan bahwa dilakukan uji t berpasangan.

<br>

Berikut adalah hasilnya :

```
> t.test(x, y, paired=TRUE)

	Paired t-test

data:  x and y
t = -6.8039, df = 8, p-value = 0.0001373
alternative hypothesis: true mean difference is not equal to 0
95 percent confidence interval:
 -23.80310 -11.75246
sample estimates:
mean difference 
      -17.77778
```

### 1C

> **Tentukanlah apakah terdapat pengaruh yang signifikan secara statistika dalam hal kadar saturasi oksigen, sebelum dan sesudah melakukan aktivitas *A* jika diketahui tingkat signifikansi &alpha; = 5% serta H0 : "tidak ada pengaruh yang signifikan secara statistika dalam hal kadar saturasi oksigen sebelum dan sesudah melakukan aktivitas *A*".**

Setelah dilakukan uji t, didapatkan nilai p-value.

Nilai p-value bisa digunakan untuk menentukan apakah terdapat pengaruh signifikan pada kadar saturasi oksigen antara sebelum dan sesudah melakukan aktivitas *A*. Apabila nilai p-value kurang dari tingkat signifikansi (&alpha; = 5%), maka kita dapat menolak H0 (tidak ada pengaruh signifikan).

Dikarenakan nilai p-value yang didapatkan setelah uji t adalah `0.0001373` (kurang dari &alpha; = 0.05), maka kita dapat menolak H0. Sehingga dapat disimpulkan bahwa **terdapat pengaruh signifikan secara statistika dalam hal kadar saturasi oksigen, sebelum dan sesudah melakukan aktivitas *A*.**

## Soal 2

Diketahui bahwa mobil dikemudikan rata-rata lebih dari 25.000 kilometer per tahun. Untuk menguji klaim ini, 100 pemilik mobil dipilih secara acak diminta untuk mencatat jarak yang mereka tempuh. Jika sampel acak menunjukkan rata-rata 23.500 kilometer dan standar deviasi 3.000 kilometer (kerjakan menggunakan library seperti referensi pada modul).

### 2A

> **Apakah Anda setuju dengan klaim tersebut? Jelaskan.**

Saya setuju, karena sebelum melakukan uji z-sum kita dibolehkan untuk memberikan klaim bahwa mungkin saja apabila mobil dikemudikan rata-rata lebih dari 25.000 kilometer per tahun.

Kemudian, untuk menguji bahwa klaim kita benar bisa menggunakan uji z-sum.

### 2C

> **Buatlah kesimpulan berdasarkan p-value yang dihasilkan!**

Berikut adalah Script R untuk melakukan uji z-sum :

```R
# C
# Kesimpulan berdasarkan p-value yang dihasilkan

rerata = 23500
sigma  = 3000
n      = 100

zsum.test(rerata, sigma, n,
          alternative = "greater",
          mu = 25000)
```

- `rerata :` rata-rata data pada sampel acak
- `sigma :` standar deviasi pada sampel acak
- `n :` banyak sampel acak yang diuji
- `zsum.test() :` function untuk melakukan uji z-sum
- `mu :` nilai klaim rata-rata

Berikut adalah hasilnya :

```
> zsum.test(rerata, sigma, n,
+           alternative = "greater",
+           mu = 25000)

	One-sample z-Test

data:  Summarized x
z = -5, p-value = 1
alternative hypothesis: true mean is greater than 25000
95 percent confidence interval:
 23006.54       NA
sample estimates:
mean of x 
    23500
```

Berdasarkan hasil di atas, didapatkan nilai p-value adalah 1 (lebih besar dari &alpha; = 0.05), maka tidak cukup bukti untuk menolak H0. Sehingga dapat disimpulkan bahwa **rata-rata jarak tempuh mobil lebih dari 25.000 kilometer per tahun.**

## Soal 3

### 3A

```R
x = 3
v = 10

# A
# Fungsi Probabilitas Distribusi Chi-Square
dchisq(x, v)
```

Berikut adalah hasilnya :

![output_3A](Images/output_3A.png)

### 3B

```R
# B
# Histogram dari Distribusi Chi-Square dengan 500 data acak
hist(rchisq(n = 500, df = v), main = "Histogram Distribusi Chi-Square",
     xlab = "Nilai", ylab = "Frekuensi")
```

Berikut adalah hasilnya :

![plot_3B](Images/plot_3B.png)

### 3C

```R
# C
# Rataan dan Varian Distribusi Chi-Square
mean <- v
varian <- 2 * v
mean
varian
```

Berikut adalah hasilnya :

![output_3C](Images/output_3C.png)

## Soal 4

> **Data bangkitan acak sebanyak 100 dengan `mean = 45` dan `sd = 5`**

```R
n = 100
mean = 45
sd = 5
```

### 4A

> **Fungsi probabilitas Distribusi Normal P(X1 <= x <= X2), hitung z-score, dan plot data**

Pertama kita generate suatu Data Bangkitan Acak Distribusi Normal, kemudian hitung rata-ratanya, misalkan hasilnya bernama `avg`.

Setelah itu, hitung `x1` yang bernilai `floor(avg)` dan `x2` yang bernilai `ceiling(avg)`.

Kemudian, hitung probabilitasnya sesuai dengan fungsi probabilitas yang ada di soal, yaitu `P(X1 <= x <= X2)`.

Setelah itu, hitung z-score dari x1 dan x2 berdasarkan rumus `z-score = (x - mean) / sd`, dengan `mean` adalah rata-rata dan `sd` adalah standar deviasi.

Script Perhitungan :

```R
# A
# Perhitungan
data <- rnorm(n, mean, sd)
avg <- mean(data)
x1 <- floor(avg)
x2 <- ceiling(avg)
prob <- pnorm(x2, avg, sd) - pnorm(x1, avg, sd)
z1 <- (x1 - avg) / sd
z2 <- (x2 - avg) / sd
```

Script Hasil :

```R
avg
x1
x2
prob
z1
z2
```

Hasil :

![output_4A](Images/output_4A.png)

Script Plot :

```R
# Plot
plot(data)
```

Plot :

![plot_4A](Images/plot_4A.png)

### 4B

> **Histogram dari Distribusi Normal dengan breaks 50**

Script :

```R
# B
# Histogram Distribusi Normal dengan breaks 50
hist(data, breaks = 50)
```

Hasil Histogram :

![histo_4B](Images/histo_4B.png)

### 4C

> **Nilai Varian dari Data Bangkitan Acak Distribusi Normal**

Script :

```R
# C
# Varian data bangkitan acak Distribusi Normal
var(data)
```

Hasil :

![output_4C](Images/output_4C.png)

## Soal 5

> **Kerjakan soal-soal berikut menggunakan Distribusi T-Student**

Pada nomor ini cukup kerjakan dengan menggunakan fungsi `pt()` dan `qt()`

### 5A

> **Probabilitas peristiwa acak X kurang dari -2.34 dengan 6 derajat kebebasan**

Berikut adalah scriptnya :

```R
# A
pt(q = -2.34, df = 6)
```

### 5B

> **Probabilitas peristiwa acak X lebih dari 1.34 dengan 6 derajat kebebasan**

Berikut adalah scriptnya :

```R
# B
pt(q = 1.34, df = 6, lower.tail = FALSE)
```

### 5C

> **Probabilitas peristiwa acak X kurang dari -1.23 atau lebih besar dari 1.23 dengan 3 derajat kebebasan**

Berikut adalah scriptnya :

```R
# C
pt(q = -1.23, df = 3) + pt(q = 1.23, df = 3, lower.tail = FALSE)
```

### 5D

> **Probabilitas peristiwa acak X berada di antara -0.94 dan 0.94 dengan 14 derajat kebebasan**

Berikut adalah scriptnya :

```R
# D
pt(q = 0.94, df = 14) - pt(q = -0.94, df = 14)
```

### 5E

> **Nilai t-score dengan 5 derajat kebebasan yang memiliki luasan 0.0333 satuan persegi di bawah kurva dan di sebelah kiri t-score**

Berikut adalah scriptnya :

```R
# E
qt(p = 0.333, df = 5)
```

### 5F

> **Nilai t-score dengan 25 derajat kebebasan yang memiliki luasan 0.125 satuan persegi di bawah kurva dan di sebelah kanan t-score**

Berikut adalah scriptnya :

```R
# F
qt(p = 0.125, df = 25, lower.tail = FALSE)
```

### 5G

> **Nilai t-score dengan 11 derajat kebebasan yang memiliki luasan 0.75 satuan persegi di bawah kurva dan di antara t-score tersebut dan negatif dari nilai t-score**

Berikut adalah scriptnya :

```R
# G
qt(p = 0.875, df = 11)
```

### 5H

> **Nilai t-score dengan 23 derajat kebebasan yang memiliki luasan 0.0333 satuan persegi di bawah kurva dan di luar interval antara t-score dan negatif dari nilai t-score**

Berikut adalah scriptnya :

```R
# H
qt(p = 0.98335, df = 23)
```

### Hasil

![output_5](Images/output_5.png)
