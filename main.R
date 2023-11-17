## Read a datasets into R
R<-read.csv("Data.csv")
attach(R)

## Start simple regression
SR<-lm(Response~GP,data = R)
## Show the summary results
summary(SR)
## Check the output results
names(SR)
SR$residuals
mean(SR$residuals)


### Dot plot with regression analysis
R<-read.csv("Data.csv")
attach(R)
library(ggpubr)
ggplot(R,aes(x=GP,y=Response*.6,color=Treat))+
  geom_point(size=3)+
  facet_wrap(.~Treat)+
  geom_smooth(method = "lm")+
  stat_regline_equation(aes(label=paste(..eq.label..)),label.y = 7)+
  stat_regline_equation(aes(label=paste(..rr.label..)),label.y = 6.5)+
  stat_cor(aes(label=paste(..p.label..)),label.y = 6.0)+
  ylab("Response")
## Save the graph
ggsave("Figure1.png",width = 12,height = 6,dpi=300)


### Dot plot with regression analysis scale free
R<-read.csv("Data.csv")
attach(R)
library(ggpubr)
ggplot(R,aes(x=GP,y=Response*.6,color=Treat))+
  geom_point(size=3)+
  facet_wrap(.~Treat)+
  geom_smooth(method = "lm")+
  stat_regline_equation(aes(label=paste(..eq.label..)),label.y = 7)+
  stat_regline_equation(aes(label=paste(..rr.label..)),label.y = 6.5)+
  stat_cor(aes(label=paste(..p.label..)),label.y = 6.0)+
  ylab("Response")
## Save the graph
ggsave("Figure2.png",width = 12,height = 6,dpi=300)


