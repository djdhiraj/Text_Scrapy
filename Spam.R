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
install.packages("quanteda")
library(quanteda)
View(train)
train_tokens<-tokens(train_tokens,removes_numbers=TRUE)
train_tokens<-tokens(train$sms,removes_numbers=TRUE)
train_tokens<-tokens(train$sms,removes_numbers=TRUE,remove_hyphens)
train_tokens<-tokens(train$sms,removes_numbers=TRUE,remove_hyphens=TRUE)
train_tokens<-tokens(train$sms,removes_numbers=TRUE,remove_hyphens=TRUE,remove_stopwords=TRUE)
train_tokens<-tokens(train$sms,removes_numbers=TRUE,remove_hyphens=TRUE,remove_stopwords=TRUE,remove_punch=TRUE)
train_tokens<-tokens_tolower(train_tokens)
train_tokens[[357]]
train_tokens<-tokens_select(train_tokens,stopwords(),selection = "remove")
train_tokens<-tokens_wordstem(train_tokens,language = "english")
train_tokens_dfm<-dfm(train_tokens,tolower=FALSE,remove=stopwords())
train_tokens_matrix<-as.matrix(train_tokens_dfm)
dim(train_tokens_matrix)
colnames(train_tokens_matrix)[1:50]
names(train_tokens_dfm)<-make.names(train_tokens_dfm)
train_tokens_dfm<-apply(train_tokens_matrix,1,term.frequency)
term.frequency<-funtion(row){row/sum(row)}
term.frequency<-function(row){row/sum(row)}
term.frequency<-funtion(row){row/sum(row)}
term.frequency<-function(row){row/sum(row)}
train_tokens_dfm<-apply(train_tokens_matrix,1,term.frequency)
dim(train_tokens_dfm)
train_tokens.tfidf<-t(train_tokens.tfidf)
train_tokens.tfidf<-t(train_tokens_dfm)
dim(train_tokens.tfidf)
incomplete_cases<-which(!complete.cases(train_tokens.tfidf))
train$sms[incomplete_cases]
train_tokens.tfidf[incomplete_cases,]<-rep(0.0,ncol(train_tokens.tfidf))
sum(which(!complete.cases(train_tokens.tfidf)))
help(complete.cases())
?complete.cases()
gc()
train
View(train)
train_tokens.tfidf
library(irlba)
train_irlba<-irlba(t(train_tokens.tfidf),nv=200,maxit = 500)
sigma_inverse<-1/train_irlba$d
u_transpose<-t(train_irlba$u)
document<-train_tokens.tfidf[1,]
document.hat<-sigma_inverse *u_transpose %>% document
library(dplyr)
install.packages("dplyr")
library(dplyr)
document.hat<-sigma_inverse *u_transpose %>% document
document<-train_tokens.tfidf[1,]
document.hat<-sigma_inverse *u_transpose %>% document
document.hat<-sigma_inverse *u_transpose %*% document
document.hat
document.hat[1:10]
rpart<-train(label~.,data=train_tokens.tfidf)
library(caret)
rpart<-train(label~.,data=train_tokens.tfidf)
rpart<-train(label~.,data=train)


