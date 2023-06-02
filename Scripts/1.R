install.packages("BSDA")
library(BSDA)

# A
# Standar Deviasi dari data selisih pasangan pengamatan

x <- c(78, 75, 67, 77, 70, 72, 78, 70, 77)
y <- c(100, 95, 70, 90, 90, 90, 89, 100, 100)

diff <- y - x
sd(diff)

# B
# Nilai t (p-value)

t.test(x, y, paired=TRUE)
