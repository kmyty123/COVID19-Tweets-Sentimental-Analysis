# COVID19-Tweets-Sentimental-Analysis
This repository is created to store codes and datasets that we used to do the sentimental anaylsis on COVID-19 related Tweets. The orginal dataset was obtained from Kaggle:

https://www.kaggle.com/datatattle/covid-19-nlp-text-classification?select=Corona_NLP_train.csv
https://www.kaggle.com/datatattle/covid-19-nlp-text-classification?select=Corona_NLP_test.csv

Each row has the original tweet and location and time info of it. They are labled into one of the five sentimental groups:

 “Extremely Positive”, “Positive”, “Netural”, “Negative”, “Extremely Negative”

We applied both traditional machine learning algorithms (such as SVM) and neural network (RNN) to do the analysis. Our conclusion is that the RNN has a better performance than traditional algorithms in this specific classification task.
