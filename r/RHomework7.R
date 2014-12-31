library(klaR)

visitdata <- read.csv('./HW07.csv')
visitdata$dSLVbin = cut( visitdata$daySinceLastVisit, breaks=10, labels=c("d1","d2","d3","d4","d5","d6","d7","d8","d9","d10"))
visitdata$vCbin = cut( visitdata$visitCount, breaks=10, labels=c("v1","v2","v3","v4","v5","v6","v7","v8","v9","v10"))
visitdata$pDbin = cut(visitdata$pageDepth,breaks=10,labels=c("p1","p2","p3","p4","p5","p6","p7" ,"p8","p9","p10"))
visitdata$f_revisit = factor(visitdata$revisit)

splitRatio <- 60
numberTrain <- floor( nrow(visitdata) * splitRatio / 100)
splits = sample(nrow(visitdata),numberTrain,replace=FALSE)
train=visitdata[splits,]
test=visitdata[-splits,]

nb_model1=NaiveBayes(f_revisit~vCbin+dSLVbin+pDbin,data=visitdata)
pred=predict(nb_model1,newdata=test[,-9])

result = data.frame(actual=test$f_revisit,predicted=pred$class)
result$check = ifelse(result$actual==result$predicted,0,1)
accuracy = 1-(sum(result$check)/nrow(result))