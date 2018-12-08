data<-read.csv(file.choose())
View(data)
names(data)
names(data)[1:2]
#Change the colomn name
names(data)[1:2]<-c("label","sms")
names(data)[1:2]
View(data)
#Remove other colomn from the data set 
data<-subset(data,select = -c(X,X.1,X.2))
View(data)
data$label<-as.factor(data$label)
data$sms<-as.character(data$sms)
data$length<-nchar(data$sms)
View(data)
table(data$label)
prop.table(table(data$label))
ggplot(data,aes(x=label))+geom_histogram()
ggplot(data,aes(x=label))+geom_histogram(binwidth = 4)
ggplot(data,aes(x=label))+geom_bar(binwidth = 4)
ggplot(data,aes(x=length()))+geom_bar(binwidth = 4)
ggplot(data,aes(x=length))+geom_bar(binwidth = 4)
ggplot(data,aes(x=length,fill=label_both()))+geom_bar(binwidth = 4)
ggplot(data,aes(x=length,fill=label)+geom_bar(binwidth = 4)
ggplot(data,aes(x=length,fill=label)+geom_bar(binwidth = 4)
ggplot(data,aes(x=length,fill=label))+geom_bar(binwidth = 4)
index<-createDataPartition(data$label,times = 1,p=.7,list = FALSE)
View(index)
train<-data[index,]
test<-data[-index,]
View(train)
View(test)
