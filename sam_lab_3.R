
# 1

f <- function(x) {log(x^2+6*x+12, base=1/3)}
result <- optimize(f, interval=c(-19,-1))
max_point <- result
