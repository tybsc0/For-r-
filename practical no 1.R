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
C
D=a-b
D
A%*%B
B%*%A
det(A)
det(B)
solve(A)
Solve(B)
t(A)
t(B)
A%*%t(b)
t(A%*%B)
t(A)%*%t(b)




## quetsion no 05 

A1=matrix(c(1,3,5,8,5,5,2,3,1) , nrow=3 , ncol = 3, byrow = TRUE)
A2=matrix(c(2,3,2,0,6,5,1,3,2) , nrow=3 , ncol = 3, byrow = TRUE)
A1+A2
A2-A1
A1%*%A2
det(A1)
det(A2)
solve(A1)
solve(A2)
t(A1)
A1%*%t(A2)
solve(t(A1%*%A2))
t(A1%*%A2)

### Question no 06

n=seq(1:10)
n
X=c(28,27,26,32,30,29,35,30,32,40)
X
Y=c(24,24,20,28,25,26,32,26,30,35)
Y
d=data.frame(n,X,Y)
d
head(d)                  # Display 1st 6 rows
tail(d)                  # Display last 6 rows
nrow(d)                  # no of length in rows
ncol(d)                  # no of length in cols    
d[1:3,]                
d[8:10,]
d[1:3,2:3]
d[3,1]
z=(X+Y)/2
z
transform(n,Z=z)


# Question no . 07 

n=seq(1,10)
n
z1=c(5,3,2,6,3,7,4,5,7)
z1
c=data.frame(n,z1)
c
d1=merge(d,c, by="n")
d1
install.packages("dplyr")
library("dplyr")
d1[-4]
d1[c(1,4)]

#### Question no 08
h=c(140,137,150,147,139,140,150,132,138,140)
h
w=c(55,57,59,62,61,60,60,58,59,57)
w
d=data.frame(h,w)
d
h1=h[h>145]
h1
w1=w[w>55]
w1
d1=subset(d,h>140|w>60)
d1
