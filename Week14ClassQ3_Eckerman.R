#Week 14 Class Q3

xdf<-data.frame(Election2000)

xdf$Electoral_Gore<-ifelse(xdf$Popular_Gore>xdf$Popular_Bush,xdf$Electoral.Votes,0)
xdf$Electoral_Bush<-ifelse(xdf$Popular_Bush>xdf$Popular_Gore,xdf$Electoral.Votes,0)
xdf$Difference<-ifelse(xdf$Popular_Gore>xdf$Popular_Bush,xdf$Popular_Gore-xdf$Popular_Bush,
                       xdf$Popular_Bush-xdf$Popular_Gore)
xdf$Percentage<-(xdf[,"Difference"]/(xdf[,3]+xdf[,4])*100)
print(xdf[1:15,])
print(sum(xdf$Electoral_Gore))
print(sum(xdf$Electoral_Bush))