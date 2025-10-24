#Week 14 HW Q3

url<-"http://stat.ethz.ch/Teaching/Datasets/WBL/mz93c.dat"
d.child<-read.table(url,header=TRUE)
print(head(d.child,n=10))

d.child$alter<-ifelse(is.na(d.child$jahrgnag)==T,d.child$alter,(1993-d.child$jahrgang))
print(d.child)

boxplot(d.child$alter~d.child$geschlecht)

split_data <- split(d.child$alter, d.child$geschlecht)
medians <- lapply(split_data, median)
print(medians)