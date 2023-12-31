View(diamonds)
ggplot(diamonds,aes(x=cut))+geom_bar()
ggplot(diamonds,aes(x=cut))+geom_bar(color="red")
ggplot(diamonds,aes(x=cut))+geom_bar(color="red",fill="yellow")
ggplot(diamonds,aes(x=cut))+geom_bar(colour="red",fill="yellow",width=0.5)
ggplot(diamonds,aes(x=depth,y=price))+geom_point()
View(CO2)
ggplot(CO2,aes(x=conc,y=uptake))+geom_point()
Data200=arrange(CO2,conc)
ggplot(CO2,aes(x=conc,y=uptake))+geom_point(size=4,color="blue")
ggplot(CO2,aes(x=uptake))+geom_boxplot()
View(Placement_Data_Full_Class_3_)
#scatter plot to understand relation between two  numeric variables by using geometric point
plot1=ggplot(Placement_Data_Full_Class_3_,aes(mba_p,salary))+geom_point()
print(plot1)
plot2=ggplot(Placement_Data_Full_Class_3_,aes(ssc_p,hsc_p))+geom_point()
print(plot2)
plot3=ggplot(Placement_Data_Full_Class_3_,aes(mba_p,salary,color=gender))+geom_point()
print(plot3)
plot4=ggplot(Placement_Data_Full_Class_3_,aes(mba_p,salary,color=gender,shape=specialisation))+geom_point()
print(plot4)
#find relationship between ssc_p and hsc_p as per gender and hsc board
plot5=ggplot(Placement_Data_Full_Class_3_,aes(ssc_p,hsc_p,color=gender,shape=hsc_b))+geom_point()
print(plot5)
#ssc_p and hsc_p are having positive correlationship
plot6=ggplot(Placement_Data_Full_Class_3_,aes(mba_p,specialisation))+geom_boxplot()+geom_point()
print(plot6)
#find distribution of salaries as per gender and comment on maximum salary,minimum salary
plot7=ggplot(Placement_Data_Full_Class_3_,aes(salary,gender))+geom_boxplot()+geom_point()
print(plot7)
plot8=ggplot(Placement_Data_Full_Class_3_,aes(salary,specialisation,gender))+geom_boxplot()+geom_point()+facet_wrap(~gender)
print(plot8)
