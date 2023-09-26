#collect information of all academic performance
Data13=select(Placement_Data_Full_Class_3_,hsc_p,ssc_p,degree_p,etest_p,mba_p)
#find performance of students, hsc and ssc genderwise
Data14=group_by(Placement_Data_Full_Class_3_,gender)%>%summarise(savg=mean(ssc_p),havg=mean(hsc_p))
#find average salaries as per specifications of mba
Data15=summarise(Placement_Data_Full_Class_3_,avg,sal=mean(salary),is.na()=TRUE)
#find average of mba percentage as per gender
Data16=group_by(Placement_Data_Full_Class_3_,gender)%>%summarise(mmba=mean(mba_p))
#filter the data for placed students
Data17=filter(Placement_Data_Full_Class_3_,status=='Placed')
#sort data as per salary ascending order
Data18=arrange(Placement_Data_Full_Class_3_,salary)
#salary greater than 4lakh
Data19=filter(Placement_Data_Full_Class_3_,salary>400000)
#spread the data of salary as per specification of mba
Data20=spread(Placement_Data_Full_Class_3_,specialisation,salary)
#gather  hr and marketing
Data21=gather(Data20,"specialisation","salary",14:15)
#mutate
Data22=mutate(Data21,havg=(hsc_p+ssc_p)/2)
