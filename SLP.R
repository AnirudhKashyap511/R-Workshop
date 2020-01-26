
setwd("C:/Users/raghu/Documents") 
mydata=read.csv('tip.csv',sep=",",header=TRUE)
attach(mydata)
names(mydata)
model=nnet(CustomerWillTip~Service+Ambience+Food, data=mydata, size =5, rang=0.1, decay=5e-2, maxit=5000)
print(model)
plotnet(model)
garson(model)