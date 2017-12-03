# Data Science :Capstone Activities:

Main task is creating next word predicator using a natural language processing model based on the SwiftKey datasets.
 Dataset link :[https://d396qusza40orc.cloudfront.net/dsscapstone/dataset/Coursera-SwiftKey.zip]

Tasks accomplished:

 - Data acquisition and cleaning including removing dirty words is conducted.
 - Related to Sampling, 5,000 lines from each datasets (blogs, news and twitter) are sampled for exploring and the left data will be        sampled as test data sets.
 - Tokenization is done with the objective of removing meaningless characters and the words with low frequency.
 - N-grams(fivegram, quadragram, trigram, bigram and unigram) models are extracted using ANLP and RWeka packages

Modeling 
========================================================
N-grams model

Ngrams model uses a high probability of the last words and will predict next words of phrases. However , it cost a lot time to process and train the data.
Fivegram model

Backoff implmenation 

Backoff model is used for the creation this app using the ANLP package which the package in-turn depends on the Katz's back-ff model. Basically,the model get the probability of every (n-1) terms, order them and show the first few words as prediction. If no words were shown, a (n-1)-gram model will be used until uni-gram model, which will show the most common words in the corpus.

Products completed as part of capstone:
 - Milestone reports  with stop words and stemming :http://www.rpubs.com/Yadem/323632
 - With stop words and without stemming the sample dataset: http://www.rpubs.com/Yadem/336089
 - Shiny app for next work predictor: https://yilmaadem.shinyapps.io/nextwordpredictor/


References:
1. Datasets  https://d396qusza40orc.cloudfront.net/dsscapstone/dataset/Coursera-SwiftKey.zip
2. ANLP package :https://cran.r-project.org/web/packages/ANLP/ANLP.pdf
3. Katz's back-off model :https://en.wikipedia.org/wiki/Katz%27s_back-off_model).
4. tm package :https://cran.r-project.org/web/packages/tm/index.html
5. Coursera project review :https://www.coursera.org/learn/data-science-project/supplement/FrBtO/project-overview
