library("ggplot2")
data(mtcars)
head(mtcars)

fmla <- mpg ~ cyl + hp + wt

mpg_formula <- lm(fmla, data = mtcars)

mpg_formula
summary(mpg_formula)

mpg_prediction <- predict(mpg_formula)

# plot the results
ggplot(mtcars, aes(x = mpg_prediction, y = mpg)) + 
  geom_point() +
  geom_abline(color = "blue")