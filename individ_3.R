# 11.Определение наличия хотя бы двух делителей кратных 8 у элементов вектора

v <- c(1:50)
w <- c()


for(i in 1:length(v)) {
  count <- 0
  for(j in 1:v[i]) {
    if(j %% 8 == 0 && v[i] %% j == 0)
      count = count + 1
  }
  
  if(count >= 2) {
    w[length(w)+1] = v[i]
  }
}
w
ы
plot(w,w,type="l",lty="dotdash",xlab="ось Х", ylab="ось У", 
     main="График",col="blue",fg="red")










