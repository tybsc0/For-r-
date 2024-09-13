View(mammalsize)
a<-mammalsize
View(a)
names (a)
install.packages("MASS")
library (MASS)
Y1 = a$`gestation period (days)`
x1 = a$`brain weight (gms)`
x2 = a$`body weight(kg)`
x3 = a$`av. Litter size`
model = lm(Y1~x1+x2+x3)
plot(model)
a1 = a[-c(72),]
View(a1)
Y2 = a1$`gestation period (days)` 
X1.1 = a1$`brain weight (gms)`
X2.1 = a1$`body weight(kg)`
X3.1 = a1$`av. Litter size`
model1=lm(Y2~X1.1+X2.1+X3.1)
plot(model1)

a2 = a1[-c(77),]
View(a2)
Y3 = a$`gestation period (days)`
X1.3 = a2$`brain weight (gms)`
X2.3 = a2$`body weight(kg)`
X3.3 = a2$`av. Litter size`
model2 =lm(Y3~X1.3+X2.3+X3.3)
plot(model2)
shapiro.test(Y3)
Y4<-log(Y3)
model3<lm(Y4~X1.3+X2.3+X3.3)
plot(model3)
shapiro.test(Y3)
library(lmtest)
bptest(model3)
Summary(model3)



############ Question no .02 #######
cc=crack_combined
View(cc)
Y=cc$`change in grade of crack`
X=cc$`change in length of crack`
dummy=cc$`type of leg`
model=lm(Y~X+dummy)
plot(model)
install.packages("lmtest")
library(lmtest)
bptest(model)
shapiro.test(Y)
summary(model)

###### Question no 4 #################

a=moths_combined
View(a)
names(a)
Y=a$distance
X2=a$`number of moths placed`
X1=a$`number of moths removed by predators`
dummy=a$colour
X=X2/X1
model=lm(Y~X+dummy)
plot(model)
install.packages("lmtest")
library(lmtest)
bptest(model)
shapiro.test(Y)
Summary(model)



############# Question no .4 ########
AM=Auto_MPG_Data_Set
View(AM)
names(AM)
str(AM)
Summary(AM[2:9])
AM$horsepower=as.numeric(as.character(AM$horsepower))
class(AM$horsepower)
is.na(AM)
summary(AM[2:9])
AM$horsepower=if else(is.na(AM$horsepower),round(mean(AM$horsepower,na.rm = TRUE)),AM$horsepower)
AM
Correlation =cor(AM[2:9])
Correlation
install.packages("corrplot")
corrplot(Correlation)
library(corrplot)
corrplot(Correlation)
Y<-AM$MPG
x1<-AM$cylinders
x2<-AM$displacement
x3<-AM$horsepower
x4<-AM$weight
x5<-AM$accelaration
x6<-AM$year
x7<AM$origin
model=lm(Y~x1+x2+x3+x4+x5+x6+x7)
plot(model)
shapiro.test(Y)
y1<-log(Y)
model1<-lm(y1~x1+x2+x3+x4+X5+x6+x7)
plot(model1)
bptest(model1)
summary(model1)

