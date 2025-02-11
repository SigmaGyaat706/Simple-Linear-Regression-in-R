#mpg (Y) = Miles per gallon (dependent variable)
#hp (X) = Horsepower (independent variable)
library(ggplot2)


data(mtcars)

model = lm(mpg ~ hp, data = mtcars)

summary(model)

plot(
  mtcars$hp,
  mtcars$mpg,
  main = "MPG vs Horsepower",
  xlab = "Horsepower",
  ylab = "Miles per Gallon",
  pch = 8,
  col = "black"
)


abline(model, col = "yellow", lwd = 2)