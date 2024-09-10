   ################ Practcal no .02 ###########
   
#######   Question.no 01
install.packages(ggplot2)
library(ggplot2)
View(stackloss)
str(stackloss)
View(stackloss)
names(stackloss)
ggplot(stackloss, aes(x=Air.Flow)) + geom_histogram()
# change bin width
ggplot(stackloss, aes(x=Air.Flow)) + geom_histogram(binwidth=5)

# box plot

ggplot(stackloss , aes(x = "", y = Air.Flow)) + geom_boxplot() +
  ggtitle("Boxplot of Air Flow")+theme_minimal() + theme(plot.title = 
                                                           element_text(hjust=0.5))   
#####add label title and colour to plot

ggplot(stackloss, aes(x=Air.Flow)) + geom_histogram(binwidth=5, 
                                                    color="black", fill= "green") + 
  ggtitle("Histogram of Air Flow") + xlab("Air flow") + ylab("Count") +
  theme(plot.title = element_text(hjust=0.5))


# box plot
ggplot(stackloss , aes(x = "", y = Air.Flow)) + geom_boxplot() +
  ggtitle("Boxplot of Air Flow")+theme_minimal() + theme(plot.title = 
                                                           element_text(hjust=0.5))

# Scatter plot
ggplot(stackloss, aes(x=Air.Flow, y=Water.Temp)) + geom_point()



#  add label title and colour to plot  

ggplot(stackloss, aes(x=Air.Flow, y=Water.Temp)) + 
  geom_point(colour = "blue") +
  ggtitle("Scatterplot") + xlab("Air flow") + ylab("Water Temp") + 
  theme(plot.title = element_text(hjust=0.5))


############# Question no 02
##data=read.csv("H:\\SEM V paper 4\\data set\\loan_data.csv")
data=loan_data
View(data)
names(loan_data)
library(ggplot2)
ggplot(loan_data, aes(Purpose)) + geom_bar()
# add label title and colour to plot
ggplot(loan_data, aes(Purpose)) + geom_bar(fill = 'gold', color = 
                                             'black') + ggtitle("Purpose of Loan") + xlab("Loan Purpose") + 
  ylab("Count of Customers") +
  theme(plot.title = element_text(hjust=0.5))

# multiple barplot
ggplot(loan_data, aes(Purpose)) + geom_bar(aes(fill = Creditability), 
                                           color = 'black', position="dodge")

# Histogram
ggplot(loan_data, aes(x=Credit.Amount)) + 
  geom_histogram(binwidth=1000, fill = "lightblue", color="black") + 
  ggtitle("Histogram of Credit Amount in Bank Account") + xlab("Credit 
Amount") + ylab("Count of Customers") +
  theme(plot.title = element_text(hjust=0.5))
# Boxplot
# univariate Boxplot

ggplot(loan_data , aes(x = Creditability, y = Credit.Amount)) + 
  geom_boxplot(aes(fill = Creditability)) +
  ggtitle("Boxplot of Credit amount in account based on customers 
Credibility") +
  xlab("Creditability") + ylab("Amount")

# frequency Polygon
ggplot(loan_data, aes(Credit.Amount, color = Creditability)) +
  geom_freqpoly(binwidth = 500) + ggtitle("Frequency Polygon of 
Credit amount in account based on customers Credibility") +
  xlab("Count") + ylab("Amount")

# Scatterplot
ggplot(loan_data, aes(x=Credit.Amount, y=Age, shape=Creditability, 
                      color=Creditability)) + geom_point() +
  ggtitle("Scatterplot of Credit Amount v/s Age in Years") +
  xlab("Credit Amount") + ylab("Age") + theme(plot.title = 
                                                element_text(hjust=0.5))



############# Question no 03

install.packages(ggplot2)
library(ggplot2)
df <- data.frame(country = c("India", "Germany", "China", "Pakistan", 
                             "Sweden"), birthrate = c(33, 16, 40, 35, 15))
df

ggplot(df, aes(country,birthrate )) + geom_col(fill = "coral") + 
  ggtitle("Birth rate for countries") + xlab("Country") + ylab("Birth 
rate")+ theme(plot.title = element_text(hjust=0.5))

############# Question no 04 #####################
library(ggplot2)
df <- data.frame(country = c("Delhi", "Kolkata", "Mumbai", 
                             "Chennai", "Delhi", "Kolkata", "Mumbai", "Chennai"), temperature = 
                   c(40.5, 42.8, 37.8, 39.4, 34.7, 33.5, 32.2, 33.1), Level = 
                   c("Max","Max","Max","Max","Min","Min","Min","Min"))
df
ggplot(df, aes(country, temperature)) + geom_col(aes(fill = Level)) + 
  ggtitle("Temperature in Cities") + xlab("Country") + ylab("Birth rate") 
+ theme(plot.title = element_text(hjust=0.5))

############## Question no.05 #############
df <- data.frame(Marks = c("5", "15", "25", "35", "45"), Students = 
                   c(6, 12, 25, 16, 11))
df
ggplot(df, aes(Marks, Students, group = 1)) + geom_point(color = 
                                                           "blue", size = 2) + geom_line() + ggtitle("Frequency Polygon")



################### Question no .06 ######

df <- data.frame(year = c("2000 - 2001", "2000 - 2001", "2000 - 
2001", "2001 - 2002", "2001 - 2002", "2001 - 2002", "2002 - 2003", 
                          "2002 - 2003", "2002 - 2003"), marks = c(20, 10, 5, 25, 9, 10, 30, 20, 
                                                                   20), stream = c("Arts", "Science", "Law", "Arts", "Science", "Law", 
                                                                                   "Arts", "Science", "Law"))
df
ggplot(df, aes(year, marks)) + geom_col(aes(fill = stream), position = 
                                          "dodge") + ggtitle("Year v/s Marks") + xlab("Year") + ylab("Marks") + 
  theme(plot.title = element_text(hjust=0.5))




############### Question no .07 #################


df <- data.frame(Items = c("Food","Clothing","Rent","Fuel and 
Lighting","Education","Miscellanoues"), Expenditure= 
                   c(240,66,125,57,42,190))
df
a<-ggplot(df, aes(x="", y=Expenditure, fill=Items))+geom_bar(width = 
                                                               1,stat="identity")
a+coord_polar("y", start=0)+ ggtitle("Pie Chart")+theme(plot.title = 
                                                          element_text(hjust=0.5))



                       ############ Pracrtic Problem ####################

install.packages("ggplot2")
library(ggplot2

d<-data.frame(year=c(2001,2002,2003,2004,2005),rainfall=c(195,228,186,205,246))
d
ggplot(df,aes(x=year,y=rainfall,fill='rainfall'))+geom_cd(width=0.6,color="")


d
ggplot(d,aes(x=year,y=rainfall,fill="rainfall"))+geom_bar(stat="identit
y",width=0.6,color="yellow")+theme_minimal()
