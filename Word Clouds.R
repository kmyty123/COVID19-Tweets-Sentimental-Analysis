install.packages("wordcloud")
library(wordcloud)
install.packages("RColorBrewer")
library(RColorBrewer)
install.packages("wordcloud2")
library(wordcloud2)
install.packages("tm")
library(tm)
install.packages("NLP")
library(NLP)

#Import and Classify datasets

NLPTrain<-read.csv("C:/Users/Sherry/Desktop/Duke MQM/Spring 2022/Winter Comp/final_dataset.csv")
Pospeople<-NLPTrain[NLPTrain$Sentiment=="Positive",]
EPospeople<-NLPTrain[NLPTrain$Sentiment=="Extremely Positive",]
Npeople<-NLPTrain[NLPTrain$Sentiment=="Neutral",]
Negpeople<-NLPTrain[NLPTrain$Sentiment=="Negative",]
ENegpeople<-NLPTrain[NLPTrain$Sentiment=="Extremely Negative",]

# Whole Picture
#Create a vector containing only the text
text <- NLPTrain$CleanTweet

# Create a corpus  
docs <- Corpus(VectorSource(text))
dtm <- TermDocumentMatrix(docs) 
matrix <- as.matrix(dtm) 
words <- sort(rowSums(matrix),decreasing=TRUE) 
df <- data.frame(word = names(words),freq=words)

#Plot
wordcloud2(data=df, size=1, color='random-dark')

#Extremely Positive
#Create a vector containing only the text
text1<- EPospeople$CleanTweet

# Create a corpus  
docs1<- Corpus(VectorSource(text1))
dtm1<- TermDocumentMatrix(docs1) 
matrix1<- as.matrix(dtm1) 
words1<- sort(rowSums(matrix1),decreasing=TRUE) 
df1<- data.frame(word = names(words1),freq=words1)

#Plot
wordcloud2(data=df1, size=1.6, color='random-dark')

#Positive
#Create a vector containing only the text
text2<-Pospeople$CleanTweet

# Create a corpus  
docs2<- Corpus(VectorSource(text2))
dtm2<- TermDocumentMatrix(docs2) 
matrix2<- as.matrix(dtm2) 
words2<- sort(rowSums(matrix2),decreasing=TRUE) 
df2<- data.frame(word = names(words2),freq=words2)

#Plot
wordcloud2(data=df2, size=1.6, color='random-dark')

#Neutral
#Create a vector containing only the text
text3<-Npeople$CleanTweet

# Create a corpus  
docs3<- Corpus(VectorSource(text3))
dtm3<- TermDocumentMatrix(docs3) 
matrix3<- as.matrix(dtm3) 
words3<- sort(rowSums(matrix3),decreasing=TRUE) 
df3<- data.frame(word = names(words3),freq=words3)

#Plot
wordcloud2(data=df3, size=1.6, color='random-dark')

#Negative
#Create a vector containing only the text
text4<-Negpeople$CleanTweet

# Create a corpus  
docs4<- Corpus(VectorSource(text4))
dtm4<- TermDocumentMatrix(docs4) 
matrix4<- as.matrix(dtm4) 
words4<- sort(rowSums(matrix4),decreasing=TRUE) 
df4<- data.frame(word = names(words4),freq=words4)

#Plot
wordcloud2(data=df4, size=1.6, color='random-dark')

#Extremely Negative
#Create a vector containing only the text
text5<-ENegpeople$CleanTweet

# Create a corpus  
docs5<- Corpus(VectorSource(text5))
dtm5<- TermDocumentMatrix(docs5) 
matrix5<- as.matrix(dtm5) 
words5<- sort(rowSums(matrix5),decreasing=TRUE) 
df5<- data.frame(word = names(words5),freq=words5)

#Plot
wordcloud2(data=df5, size=1.6, color='random-dark')
