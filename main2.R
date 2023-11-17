### Dot plot with regression analysis scale free
R<-read.csv("Data.csv")
attach(R)
library(ggpubr)
ggplot(R,aes(x=GP,y=Response))+
  geom_point(size=3)+
  geom_smooth(method = "lm")+
  stat_regline_equation(aes(label=paste(..eq.label..)),label.y = 9)+
  stat_regline_equation(aes(label=paste(..rr.label..)),label.y = 8.5)+
  stat_cor(aes(label=paste(..p.label..)),label.y = 8.0)+
  ylab("Response")
## Save the graph
ggsave("Figure3.png",width = 12,height = 6,dpi=300)


### Dot plot with regression analysis scale theme change
R<-read.csv("Data.csv")
attach(R)
library(ggpubr)
ggplot(R,aes(x=GP,y=Response))+
  geom_point(size=3)+
  geom_smooth(method = "lm")+
  stat_regline_equation(aes(label=paste(..eq.label..)),label.y = 9)+
  stat_regline_equation(aes(label=paste(..rr.label..)),label.y = 8.5)+
  stat_cor(aes(label=paste(..p.label..)),label.y = 8.0)+
  ylab("Response")+
  theme_classic()
## Save the graph
ggsave("Figure4.png",width = 12,height = 6,dpi=300)