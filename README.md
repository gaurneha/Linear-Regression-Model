

# Welcome to the Simple Linear-Regression Readme!

Simple Linear Regression Model is also called as Linear Regression Model or Regression or LM Model or Linear Model.  


## Getting Started  
Whats is Regression?  
Ans.In statistical modeling, regression analysis is a statistical process for estimating the relationships among variables. It includes many techniques for modeling and analyzing several variables, when the focus is on the relationship between a dependent variable and one or more independent variables (or 'predictors').  
Regression is nothing but the Prediction.  
**For Applying SLR,**  

* Data Type must be ***Numeric*** or ***Continuous***.  
* There should be ***One dependent variable and One independent variable***  

The Linear relation between two variables which is a relation between dependent and independent variable.  

***Note: In SLR the model can have only one dependent variable and one independent variable.***  

### SLR can be defined as,  

**Y = α + β(x)**  


Where ,
Y -> Dependent Variable  
α -> Constant  
β -> Coefficient  
x -> Independent Variable  

So here,  
* The variable Y is dependent on independent variable x.  
* Both variable must be Numeric & Continuous   
  
  
### SLR using R,
We create a relationship model using the lm() functions in R,  
  
**lm.r= lm(formula = Salary ~ YearsExperience, 
         data = Salary)   
  
* Basically we are looking for R-squared measure just to see how close the data are to the fitted regression line. It is also known as the **coefficient of determination**. 
