# Lab 2

# 1

# Дано четырехзначное число. Если оно четно, то вывести сумму его цифр. В
# противном случае определить какая цифра больше: первая или последняя.

num <- 1237

if (num %% 2 == 0) {
  sum = 0
  while(num>0) {
    sum = sum+num%%10
    num=num%/%10
  }
  print(sum)
} else {
  digits <- as.numeric(strsplit(as.character(num), "")[[1]])
  if (digits[1] > digits[4]) {
    print("Первая цифра больше последней")
  } else if (digits[1] < digits[4]) {
    print("Последняя цифра больше первой")
  } else {
    print("Первая и последняя цифры равны")
  }
}


# 2

# Дан случайный вектор из 10 целых значений.

vec <- sample(1:100, 10)
vec

sum_pos <- sum(vec[vec > 0 & vec %% 5 != 0])
sum_pos

# or
s <- 0
for(i in 1:length(vec)) {
  if(vec[i]>0 && vec[i]%%5!=0) {
    s = s+vec[i]
  }
}
s

odd <- which.min(vec %% 2 == 1)
odd

div_7 <- tail(which(vec %% 7 == 0), n = 1)
div_7

# 3

x <- sample(1:100, 10)
x

for(i in 1:length(x)) {
  if(x[i] %% 2 == 0)
    pr <- prod(x[i])
}
pr


x <- c(2, 3, 0, 7, 8, 0, 1, 6, 4, 9)
x

zeros <- which(x == 0)
zeros

if(length(zeros) == 2){ 
  sum(x[(zeros[1]+1):(zeros[2]-1)]) 
} else {
  print("Нет двух нулевых элементов в векторе")
}


# 4

vec <- sample(1:100, 10)

last_10 <- function(x) {
  return((x %% 10) + floor((x %% 100) / 10) > 10)
}

s_vec <- vec[last_10(vec)]

s_sum <- sum(selected_vec)

print(s_sum)



vec <- sample(-100:100, 10)

neg_index <- which(vec < 0)
if (length(neg_index) == 0) {
  print("Отрицательных элементов в векторе нет!")
} else {
  first_index <- neg_index[1]
  last_index <- neg_index[length(neg_index)]
  
  if (first_index == last_index) {
    print("В векторе только один отрицательный элемент.")
  } else {
    s_vec <- vec[(first_index + 1):(last_index - 1)]
    
    # Находим их сумму
    s_sum <- sum(s_vec)
    s_sum
  }
}

# 5

x <- 8642379
even <- as.numeric(strsplit(as.character(x), "")[[1]]) %% 2 == 0
sum <- as.numeric(strsplit(as.character(x), "")[[1]])[even]
print(sum)

max_digit <- max(as.numeric(strsplit(as.character(x), "")[[1]]))
print(max_digit)





