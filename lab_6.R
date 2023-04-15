
# 1
A1 = matrix(c(1,3,2,4), nrow=2)
B1 = c(7,10)
ans1 = solve(A1,B1)

A2 = matrix(c(1,-2,3,1), nrow=2)
B2 = c(5,8)
ans2 = solve(A2,B2)

A3 = matrix(c(2,-3,3,5), nrow=2)
B3 = c(13,-9)
ans3 = solve(A3, B3)

A4 = matrix(c(1,3,2,2,4,-2,3,-2,-1), nrow=3)
B4 = c(5,8,0)
ans4 = solve(A4, B4)

# det

A = matrix(c(3, -2, 4, 6), nrow=2)
det = det(A)

#21

Am = matrix(c(1,-2,3,-4), nrow=2)
Bm = matrix(c(5,0,1,-2), nrow=2)

print(Am + Bm)
print(2*Am)
print(2*Am + 3*Bm)
print(2*Bm - Am)
print(Am*Bm)
print(Am*Am+3*Bm)
print(Am*Bm-Bm*Am)

#1.1

AA = matrix(c(1,2,3,4,2,-2,-4,5), nrow=2)
BB = matrix(c(1,-1,1,2,-2,3,5,6), nrow=2)
CC = 3*AA-4*BB
min(CC)

#1.2

#1.3
A = matrix(c(2,-3,4,5), nrow=2)
B = matrix(c(1,-3,-2,2,4,-1), nrow=2)
C = A%*%B
C

#1.4

AA = matrix(c(2,-3,4,5), nrow=2)
BB = matrix(c(1,2,-3,-4), nrow=2)
CC = matrix(c(4,-1,2,1), nrow=2)

D = AA%*%CC+3*BB%*%CC
G = AA%*%CC+3*CC%*%BB
Q = CC%*%AA+3*CC%*%BB

d = max(D)
g = max(G)
q = max(Q)

#1.5
A = matrix(c(2,-4,3,5,-1,0),nrow=3)
B = matrix(c(1,2,7,-3,-4,0,5,2,1),nrow=3)
C = matrix(c(6,-3,9,4,-5,2,8,1,5),nrow=3)

D = t(A)%*%C-2*t(A)%*%t(B)
D_min = min(D)

#1.6

A = matrix(c(1,-1,3,2), nrow = 2)
ans = A%*%A%*%A












