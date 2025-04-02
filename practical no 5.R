######## Practical no .05 ###############
### Question no. 01
gdp<-Multicoliratity_data
View(Multicoliratity_data)
names(Multicoliratity_data)
#library(MASS)
Y=Multicoliratity_data$Import
X1=Multicoliratity_data$GDP
X2=Multicoliratity_data$SF
X3=Multicoliratity_data$consp
fit=lm(Y~X1+X2+X3)
Summary(fit)
# Checked for Multicolinearity 
##install.packages("car")
#library(car)
vif(fit)
cor(X1,X3)

###### Question no.o2 ##########
auto<-X1_auto
View(auto)
names(auto)
library(MASS)
Y=auto$MPG
x1=auto$cylinders
x2=auto$displacement
x3=auto$horsepower
x4=auto$weight
x5=auto$accelaration
x6=auto$year
model=lm(Y~x1+x2+x3+x4+x5+x6)
summary(model)
library(modelr)
library(car)
vif(model)


######### Question no 03  ############

library(readxl)
a=Time_Kill_data
a<-("Time Kill data.xls")
View(Time_Kill_data)
str(Time_Kill_data)
names(Time_Kill_data)
Summary(Time_Kill_data)
library(MASS)
Y=Time_Kill_data$y
X1=Time_Kill_data$x1
X2=Time_Kill_data$x2
wls=Time_Kill_data$wts
model.wls=lm(Y~X1+X2+,weight=wls)
plot(model.wls)
summary(model.wls)





############### Question .no 04 $###
library(readxl)
demand<-read-excel("demand_price.xlsx")
View(demand_price)
library(MASS)
y=demand_price$D
X=demand_price$P
var=demand_price$`Var(u)`
wls=1/var
model.wls=lm(y~X,weights=wls)
plot(model.wls)
summary(model.wls)




