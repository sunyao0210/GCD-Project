setwd('test')
Xtest<-read.table('X_test.txt')
ytest<-read.table('y_test.txt')
stest<-read.table('subject_test.txt')
DataSetA<-data.frame(Xtest,ytest,stest)

setwd('../train')
Xtrain<-read.table('X_train.txt')
ytrain<-read.table('y_train.txt')
strain<-read.table('subject_train.txt')
DataSetB<-data.frame(Xtrain,ytrain,strain)

setwd('../')
DataSet<-rbind(DataSetA,DataSetB)
features<-read.table('features.txt')
Features<-as.character(features[,2])
Features[562]<-'Activity'
Features[563]<-'Subject'
names(DataSet)<-Features
index<-c(1,2,3,4,5,6,41,42,43,44,45,46,81,82,83,84,85,86,121,122,123,124,125,126,161,162,163,164,165,166,201,202,214,215,227,228,240,241,266,267,268,269,270,271,345,346,347,348,349,350,424,425,426,427,428,429,503,504,529,530,542,543,562,563)

DataSet<-DataSet[,index]


write.csv(DataSet,'DataSet.txt')
