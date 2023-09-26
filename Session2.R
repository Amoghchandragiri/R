
data()
View(Titanic)
data=data.frame(Titanic)
Data= spread(data,Sex,Freq)
View(population)
Data1=spread(population,year,population)
Data2=gather(Data1,"Year","Population",2:20)
Data3=spread(marketing_campaign,Marital_Status,Income)
Data4=gather(marketing_campaign,"Acc_Camp","Status",21:25)
Data5=separate(marketing_campaign,Dt_Customer,c("Day","Month","Year"),sep="-")
data()
View(mtcars)
data=mtcars
data1=select(data,2:5)
data2=select(data,-1)
data3=filter(data,wt>3)
data4=slice(data,1:10)
data5=arrange(data,disp)
data6=arrange(data,gear,wt)
data7=group_by(data,gear)
data8=summarise(data7,avg=mean(wt))
data9=mtcars %>% select(1:9) %>% filter(wt>=3) %>% arrange(cyl)
View(storms)
#Remove the column with NA for storms
data10=select(storms,-category,-tropicalstorm_force_diameter,-hurricane_force_diameter)

#Is there any column on which we can apply sorting
#sort the data daywise and hourwise
data11=arrange(storms,day,hour)
#extract the data for tropical storm
data12=filter(storms,status=="tropical storm")
