#1)Find which applicants based on gender or more
View(loan_sanction_test)
ggplot(loan_sanction_test,aes(x=Gender))+geom_bar()
#Observation:- Male applicants are more in number[We use bar plot]
#2) Draw a graph including gender based variations in Property area
ggplot(loan_sanction_test,aes(x=Gender,fill=Property_Area))+geom_bar()
ggplot(loan_sanction_test,aes(x=Gender,fill=Property_Area))+geom_bar(position="dodge")
#position="dodge" helps us in understanding frequency of each category
ggplot(loan_sanction_test,aes(x=Gender,fill=Property_Area))+geom_bar(position="fill")
#position="fill" gives the percentage of gender based on Property_Area which helps in making
#comparisons
#3)What are means of loan amount sanctioned based on categories under Self_Employed? Summarise
#categories to find total loan sanctioned
d1=group_by(loan_sanction_test,Self_Employed)%>%summarise(avg=sum(LoanAmount))
#omitting NA values
d2=loan_sanction_test %>% na.omit(loan_sanction_test) %>% group_by(Self_Employed) %>% summarise(avg=sum(LoanAmount))
#4) If coapplicant's income is zero then find the mean of loan amount and loan amount term and compare
#to that of if coapplicants income is not zero
d3=loan_sanction_test %>% na.omit(loan_sanction_test) %>% filter(CoapplicantIncome==0) %>%  summarise(avg=mean(LoanAmount))
#5)find boxplots/frequency plots/histograms for loan amount according to education column
ggplot(loan_sanction_test,aes(x=LoanAmount,y=Education)+geom_boxplot()
       
       