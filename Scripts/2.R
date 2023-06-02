# C
# Kesimpulan berdasarkan p-value yang dihasilkan

rerata = 23500
sigma  = 3000
n      = 100

zsum.test(rerata, sigma, n,
          alternative = "greater",
          mu = 25000)
