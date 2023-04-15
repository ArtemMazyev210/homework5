# 1
sum_odd_number = function(x) {
  count = 0
  while(x %% 10 > 0) {
    if(x %% 10 %% 2==0){
      count = count + 1
    }
    x = x %/% 10
  }
  return(count)
}

print(sum_odd_number(12345))


# 2
fun = function(x) {
  min = +Inf
  for(i in 1:length(x)) {
    if(x[i] %% 3 == 0 & x[i] < min)
      min = x[i]
  }
  
  return(min)
}

vec = seq(1, 10)
print(fun(vec))

# 3
m=matrix(1:25, nrow=5)

apply(m,1,min)
apply(m,1,max)
apply(m,1,median)
apply(m,1,prod)

# 4

vec_2_fun = function(vec) {
  for(i in 1:length(vec))
    vec[i] * 2
}

vec_1 = seq(1:10)
vec_2 = vec_2_fun(vec_1)

sapply()
























