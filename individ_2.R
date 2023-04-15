x <- seq(-19, -1, by=0.1)
y <- log(x^2+6*x+12, base = 1/3)
m <- max(y)
m

curve(log(x^2+6*x+12, base = 1/3), -19,-1)
