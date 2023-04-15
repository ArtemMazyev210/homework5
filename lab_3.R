# lab 3

#Для выполнения данного задания, предположим, что задана некоторая функция f(x), от которой мы будем генерировать вектор y.
#Для начала создадим случайный вектор x:

x <- sample(1:100, 10, replace = TRUE)

# Далее создадим вектор y по формуле, например, такой:
y <- 2*x^2 - 5*x + 3

# 1

max_y <- max(y)
min_y <- min(y)


# 2
mean_y <- mean(y)

#3

count_y <- sum(y < mean_y)


#4

sum_y <- sum(y[y %in% 5:8])


#5

z <- ifelse(y %% 2 == 0, y^2, 2*y)


#6

curve(2*x^2 - 5*x + 3, from = -10, to = 10)

min_fun <- function(x) {2*x^2 - 5*x + 3}
result <- optimize(min_fun, interval = c(-10, 10))
x_min <- result$minimum




















