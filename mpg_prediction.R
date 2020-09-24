library("ggplot2")
#Import a data set provided by R.
data(mtcars)
head(mtcars)
#Create formula
fmla <- mpg ~ cyl + hp + wt

#Model the formula using linear regression
mpg_formula <- lm(fmla, data = mtcars)

#View the formula
mpg_formula
summary(mpg_formula)

#Predict outcomes based on linear regression
mpg_prediction <- predict(mpg_formula)

# plot the results
ggplot(mtcars, aes(x = mpg_prediction, y = mpg)) + 
  geom_point() +
  geom_abline(color = "blue")