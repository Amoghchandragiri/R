data()
View(diamonds)
#1) Spread the data colorwise
d30=spread(diamonds,color,price)
#2) Create data with price>18500
d31=filter(diamonds,price>18500)
#3) Arrange price as per color in descending order
d32=arrange(diamonds,price,desc(color))
#4) Remove column x,y,z
d33=select(diamonds,-x,-y,-z)
#5) Find average price of diamonds as per cut
d34=group_by(diamonds,cut) %>% summarise(avg=mean(price))
#6)frequencies of which cut are more
ggplot(diamonds,aes(x=cut))+geom_bar(color="yellow",width=0.5,fill="green",alpha=0.4)
#7)
ggplot(diamonds,aes(x=cut,fill=color))+geom_bar(position="dodge")+labs(title="Cut vs Color")
#8)
ggplot(diamonds,aes(x=price,fill=clarity))+geom_boxplot()
#9)
ggplot(diamonds,aes(x=price,fill=cut))+geom_boxplot()+facet_wrap(~color)
#extra
ggplot(diamonds,aes(price,cut,fill=color))+geom_boxplot()

