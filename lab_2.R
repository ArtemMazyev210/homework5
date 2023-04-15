# Lab 2

# Номер 1



# Дано четырехзначное число. Если оно четно, то вывести сумму его цифр. В
# противном случае определить какая цифра больше: первая или последняя.

num <- 1234 

if (num %% 2 == 0) {
  sum_digits <- sum(as.numeric(strsplit(as.character(num), "")[[1]]))
  print(paste("Сумма цифр числа", num, "равна", sum_digits))
} else {
  digits <- as.numeric(strsplit(as.character(num), "")[[1]])
  if (digits[1] > digits[4]) {
    print(paste("Первая цифра числа", num, "больше последней"))
  } else if (digits[1] < digits[4]) {
    print(paste("Последняя цифра числа", num, "больше первой"))
  } else {
    print(paste("Первая и последняя цифры числа", num, "равны"))
  }
}



# Номер 2



# Дан случайный вектор из 10 целых значений.

vec <- sample(1:100, 10, replace = TRUE)

# a
sum_pos <- sum(vec[vec > 0 & vec %% 5 != 0])
# b
prod_last_5 <- prod(which(substr(abs(vec), nchar(abs(vec)), nchar(abs(vec))) == "5"))
# c
odd_index <- which.min(vec %% 2 == 1)
# d
divisible_by_7 <- tail(which(vec %% 7 == 0), n = 1)

cat("Случайный вектор:", vec, "\n")
cat("Сумма положительных не кратных 5 элементов:", sum_pos, "\n")
cat("Произведение порядковых номеров элементов с последней цифрой 5:", prod_last_5, "\n")
cat("Номер элемента, имеющего первое нечетное значение:", odd_index, "\n")
cat("Номер элемента, имеющего последнее значение делящееся нацело на 7:", divisible_by_7, "\n")



# 3



set.seed(123)  # устанавливаем seed для воспроизводимости результата
x <- sample(1:100, 10, replace = TRUE)  # создаем случайный вектор из 10 целых значений
x
#>  [1] 29 79 41 95 18  3 35 80 51 67

even_digits <- grep("[02468]$", x)  # ищем элементы, оканчивающиеся на четную цифру
even_digits
#> [1]  5  8

prod(x[even_digits])  # перемножаем найденные элементы
#> [1] 14400

set.seed(123)  # устанавливаем seed для воспроизводимости результата
x <- c(2, 3, 0, 7, 8, 0, 1, 6, 4, 9)  # создаем вектор для примера
x
#>  [1] 2 3 0 7 8 0 1 6 4 9

zeros <- which(x == 0)  # ищем индексы нулевых элементов
zeros
#> [1] 3 6

if(length(zeros) == 2){  # проверяем, что нашли ровно два нулевых элемента
  sum(x[(zeros[1]+1):(zeros[2]-1)])  # вычисляем сумму элементов между ними
} else {
  print("Нет двух нулевых элементов в векторе")
}
#> [1] 22



# 4



# Создаем случайный вектор из 10 целых значений
vec <- sample(1:100, 10)

# Функция для проверки суммы двух последних цифр числа
last_two_digits_sum_gt_10 <- function(x) {
  return((x %% 10) + floor((x %% 100) / 10) > 10)
}

# Выбираем только те элементы вектора, у которых сумма двух последних цифр больше 10
selected_vec <- vec[last_two_digits_sum_gt_10(vec)]

# Находим их сумму
selected_sum <- sum(selected_vec)

# Выводим результат
cat("Сумма элементов вектора, сумма двух последних цифр у которых больше 10:", selected_sum)


# Создаем случайный вектор из 10 целых значений
vec <- sample(-100:100, 10)

# Находим индексы первого и последнего отрицательных элементов
neg_index <- which(vec < 0)
if (length(neg_index) == 0) {
  cat("Отрицательных элементов в векторе нет!")
} else {
  first_neg_index <- neg_index[1]
  last_neg_index <- neg_index[length(neg_index)]
  
  # Выбираем элементы вектора между первым и последним отрицательными элементами
  if (first_neg_index == last_neg_index) {
    cat("В векторе только один отрицательный элемент.")
  } else {
    subset_vec <- vec[(first_neg_index + 1):(last_neg_index - 1)]
    
    # Находим их сумму
    subset_sum <- sum(subset_vec)
    
    # Выводим результат
    cat("Сумма элементов вектора, расположенных между первым и последним отрицательными элементами:", subset_sum)
  }
}


# 5

# Данное случайное целое число
x <- 8642379

# a. Найти сумму четных цифр.
even_digits <- as.numeric(strsplit(as.character(x), "")[[1]]) %% 2 == 0
even_sum <- sum(as.numeric(strsplit(as.character(x), "")[[1]])[even_digits])
cat("Сумма четных цифр:", even_sum, "\n")

# b. Найти наибольшую цифру
max_digit <- max(as.numeric(strsplit(as.character(x), "")[[1]]))
cat("Наибольшая цифра:", max_digit, "\n")

# c. Найти наименьшую нечетную цифру
odd_digits <- as.numeric(strsplit(as.character(x), "")[[1]]) %% 2 == 1
odd_digits[even_digits] <- FALSE
min_odd_digit <- ifelse(sum(odd_digits) > 0, min(as.numeric(strsplit(as.character(x), "")[[1]])[odd_digits]), "Нет нечетных цифр")
cat("Наименьшая нечетная цифра:", min_odd_digit, "\n")

# d. Верно ли, что в числе нет цифр 2 и 3?
no_2_3 <- all(!grepl("[23]", x))
cat("В числе нет цифр 2 и 3:", no_2_3, "\n")

# e. Верно ли, что в числе все цифры четные?
all_even <- all(as.numeric(strsplit(as.character(x), "")[[1]]) %% 2 == 0)
cat("В числе все цифры четные:", all_even, "\n")

# f. Верно ли, что в числе цифр 5 больше, чем четных цифр?
num_5 <- sum(as.numeric(strsplit(as.character(x), "")[[1]]) == 5)
more_5_than_even <- num_5 > sum(even_digits)
cat("В числе цифр 5 больше, чем четных цифр:", more_5_than_even, "\n")





