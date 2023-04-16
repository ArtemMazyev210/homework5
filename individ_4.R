
# 15
A = matrix(c(2,-3,1,6,-6,2,2,-1,2), nrow=3)
det = det(A)
det


# 32
B = matrix(c(5,1,7,-3), nrow=2)
solve(B)



# 3.15b

# Уравнение -> X * A = 3 * B
# X = (3B)/A

A = matrix(c(2,7,3,3,9,4,1,5,3), nrow=3)
B = matrix(c(1,2,1,3,1,4), nrow=2)

BB = 3 * B
solve = solve(A)

x = BB %*% solve
x
