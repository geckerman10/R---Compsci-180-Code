#Week 14 HW Q2

url <- "http://stat.ethz.ch/Teaching/Datasets/WBL/sport.dat"
d.sport <- read.table(url, header = TRUE)

xlist<-list("name"="Gavin","myVector"=c(5,2,1,4),"mydf"=d.sport)
str(xlist)
print(xlist)
print(xlist[[3]][c(13,14),c(1:3,7)])