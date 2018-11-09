###Exercise 9 Problem 1 
acid=read.csv("acidrain.csv", stringsAsFactors = F) #read cvs.file 
library(ggplot2)
head(acid)
#plot acid data with SO2CONC as x variable and Factory concentration 
#as y variable 
a=ggplot(data=acid,aes(x=SO2CONC,y=FACTORY)) 
a
#Plot points and add trendline 
a+ geom_point() + theme_classic() + xlab("SO2CONC") + ylab("FACTORY") + stat_smooth(method = "lm")


###Problem 2 
#Bargraph 
data=read.csv("data.csv", stringsAsFactors = FALSE, header=TRUE)
head(data)
graph=aggregate(data[,2], list(data$region), mean)
graph
d=ggplot(data=data)
d+ geom_bar(aes(x = as.factor(region), y = observations), stat = "summary",
             fun.y = "mean", fill = "white", color = "black") + theme_classic() + xlab("region") + ylab("observations")
#ScatterPlot 
c=ggplot(data=data,aes(x=region,y=observations))
c
c+geom_point()+theme_classic()+geom_jitter()+aes(color=as.factor(region))
