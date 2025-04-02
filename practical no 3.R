B=birdextinct
View(B)
names(B)
y=B$`area(km.sq.)`
x1=B$`species at risk`
x2=B$`# Species extinct`
X=x2/x1     ## Proportion of species extinct
install.packages("lmtest" , dependencies = TRUE)
library(lmtest)
model=lm(y~X) ## created model Y dependent vaiable and X is proportion of species extinct
plot(model)
summary(model)
y1=log(y)
model1=lm(y1~X)
plot(model1)
summary(model1)
shapiro.test(y)
shapiro.test(y1)
bptest(model1)
