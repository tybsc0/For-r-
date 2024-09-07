   ###                    Pracrtcal n0.01
#  Question 01 
s1=c(37,49, 7,38)
s2=c(16,37,21,42,27,40,39,51)
sp=s1+s2
sn=(s1+s2)/2
sd=s1/s2
sm=s1*s2
sp
sn
sd
sm

    #Question no 02

a=seq(1,37,by=3)
b=seq(1,13)
length(a)
length(b)
c=a*b
d=a/b
e=a+b
f=a-b
c
d
e
f

      # Question no 3

y=c(40,67,75,48,44,53,66,57,65,52,83,83,79,85,88,89,87)
mean(y)
median(y)
mode=function(x)
{
  t1=table(x)
  m1=t1[t1=max(t1)]
  m2=as.numeric(names(m1))
  return(m2)
}
mode(y)

log(y)
length(y)
sort(y,incereasing = TURE)
summary(y)
range(y)
sd=sqrt(var(y))
sd



# question no.04

A=matrix(c(1,2,3,4),nrow = 2,ncol = 2,byrow  = TRUE)
B=atrix(c(2,8,6,12),nrow = 2,ncol = 2,byrow = TRUE)
a=A
b=B
A
B
C=A+B
c
D=-4[B]-A
D
e=a-b
e
A%*%B
B%*%A
det(A)
det(B)
solve(A)
Solve(B)
t(A)
t(B)
A%*%t(b)
t()

