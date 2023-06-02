install.packages("mosaic")
library(mosaic)

# A
# H0 = mean sama
# H1 = mean tidak sama

# B
# Sampel Statistik

n1      = 20
rerata1 = 3.64
sd1     = 1.67

n2      = 27
rerata2 = 2.79
sd2     = 1.5

tsum.test(rerata1, sd1, n1,
          rerata2, sd2, n2,
          alternative = "greater",
          var.equal = TRUE)

# C
# Uji statistik (df = 2)

plotDist(dist = 't', df = 2, col = "red")

# D
# Nilai Kritikal

qchisq(p = 0.05, df = 2, lower.tail = FALSE)
