
###Import Dataset###
NLPTrain<-read.csv("C:/Users/Sherry/Desktop/Duke MQM/Spring 2022/Winter Comp/Corona_NLP_train.csv")
summary(NLPTrain)


###Count Partial Strings###

library(stringr)

summary(NLPTrain$OriginalTweet)
Num_AT<-str_count(NLPTrain$OriginalTweet,pattern ="@")
Num_EX<-str_count(NLPTrain$OriginalTweet,pattern ="!")
Num_Q<-str_count(NLPTrain$OriginalTweet,pattern ="\"?\"")
Num_TAG<-str_count(NLPTrain$OriginalTweet,pattern ="#")
Num_HPLink<-str_count(NLPTrain$OriginalTweet,pattern ="https://")

###Combine Datasets###
NLPTrainB<-read.csv("C:/Users/Sherry/Desktop/Duke MQM/Spring 2022/Winter Comp/Corona_NLP_train_clean.csv")
summary(NLPTrainB)
NLPTrain_NEW<-cbind(NLPTrainB,Num_AT,Num_EX,Num_HPLink,Num_Q,Num_TAG)
summary(NLPTrain_NEW)

###Export Final Dataset###
class(NLPTrain_NEW)
write.csv(NLPTrain_NEW,"C:/Users/Sherry/Desktop/Duke MQM/Spring 2022/Winter Comp/final_dataset.csv", row.names = FALSE)
