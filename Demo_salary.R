library(readr)
Salary <- read_csv("E:/AI_12November2018/Simple-Linear-Regression-master/Salary_Data.csv")  
# to see salaries csv in seperate we can use View/View imported data from csv
#print(View(Salary))

#print(data(Salary))

#Top 6 salary 
print(head(Salary))

#last 6 salaries
print(tail(Salary))

# to check npo of rows
print(nrow(Salary))
print(ncol(Salary))

print(summary(Salary))
# to check missing values

#print(is.na(Salary))

#to cheack whether salary csv has col Salary has a missing value
#print(is.na(Salary$Salary))
# to ommit NA values wrt year of experience

#print(is.na(Salary$YearsExperience))

#to cheack linear trend by p,lotting a graph
library(ggplot2)

plot(Salary$YearsExperience,col='blue')
plot(Salary$YearsExperience,Salary$Salary,col=5)





#graph a boxplot graph
boxplot(Salary,col='blue')



#print(summary(Salary))
#abline(Salary)

# Splitting the dataset into the 
# Training set and Test set 

library(caTools) 
split <- sample.split(Salary$Salary, SplitRatio = 0.5) 



trainingset = subset(Salary, split == TRUE) 
#print(trainingset)
testset = subset(Salary, split == FALSE) 

#print(testset)

#fitting the Linear regression model
lm.r= lm(formula = Salary ~ YearsExperience, 
         data = Salary) 
coef(lm.r) 



# Predicting the Training set results 
ypred = predict(lm.r, newdata = testset) 


ggplot() + geom_point(aes(x = trainingset$YearsExperience,  
                          y = trainingset$Salary), colour = 'red') +
  geom_line(aes(x = trainingset$YearsExperience, 
                y = predict(lm.r, newdata = trainingset)), colour = 'blue') +
  
  ggtitle('Salary vs Experience (Training set)') +
  xlab('Years of experience') +
  ylab('Salary') 






# Visualising the Test set results 
ggplot() +
  geom_point(aes(x = testset$YearsExperience, y = testset$Salary), 
             colour = 'red') +
  geom_line(aes(x = trainingset$YearsExperience, 
                y = predict(lm.r, newdata = trainingset)),  
            colour = 'blue') +
  ggtitle('Salary vs Experience (Test set)') +
  xlab('Years of experience') +
  ylab('Salary') 








