

# a
vec <- seq(100:150)
c = 10
count = 0
for(i in 1:length(vec)) {
  prod_last = (vec[i] %% 100) %/% 10 * (vec[i] %% 10)
  if(prod_last > c) {
    count = count + 1
  }
}

print(count)


# b
x <- c(1, 2, -5, 4, 3, -2)
idx <- which.max(abs(x))

for(i in idx:length(x)) {
  print(x[i])
}
