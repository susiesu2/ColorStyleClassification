df1<-read.csv("testFiles/out5.csv")
df2<-read.csv("testFiles/classification.csv")
all<-merge(x = df1, y = df2)
## 75% of the sample size
smp_size <- floor(0.75 * nrow(all))
## set the seed to make your partition reproductible
set.seed(123)
train_ind <- sample(seq_len(nrow(all)), size = smp_size)
train <- all[train_ind, ]
test <- all[-train_ind, ]
write.csv(train, file = "testFiles/train.csv", row.names = FALSE)
write.csv(test, file = "testFiles/testresult.csv", row.names = FALSE)
finalTest <- test[,0:67]
write.csv(finalTest, file = "testFiles/test.csv", row.names = FALSE)