#importing the dataset
library(data.table)
df=read.csv("D:\\creditcardProject.csv")
head(df)
dim(df)
tail(df)
table(df$Class)
summary(df$Amount)
names(df)
var(df$Amount)
sd(df$Amount)
Amount=scale(df$Amount)
New=df[,-c(1)]
head(New)


library(caTools)
set.seed(123)
samp = sample.split(New$Class,SplitRatio=0.80)
train_data = subset(New,samp==TRUE)
test_data = subset(New,samp==FALSE)
dim(train_data)
dim(test_data)


Logistic_Model=glm(Class~.,test_data,family=binomial())
summary(Logistic_Model)




library(class)
knn_model=knn(train_data,test_data,cl=train_data$Amount,k=21)
pred=predict(knn_model,test_data)
acc=mean(dt_pred==test_data$class)
acc#85.7




ttach(train)

Famous=as.factor(df$Famous)
#Decision tree
library(C50)
decisintree =C5.0(Famous~.,data=train)
dt_pred=predict(decisiontree,test)
dt_acc=mean(dt_pred==test$Famous)
dt_acc#85.75



