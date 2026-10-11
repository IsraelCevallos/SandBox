# install.packages("dplyr")
# install.packages("ggplot2")
library(dplyr)
library(ggplot2)

# Datos que puedo utilizar en clases
install.packages('gapminder')
library(gapminder)
head(gapminder, 5)

# Graficar un diagrama de dispersion
cars |>
  ggplot(aes(x=dist, y=speed)) + geom_point()

# Otra forma de indicar los pipes
y <- sample(0:1, 1e4, replace = TRUE)
y |> print()
y |> mean()


data("iris")
str(iris)
head(iris)

# Filter and mutate data
new_iris <- iris %>% 
  filter(Sepal.Length > 5 & Petal.Length > 3) %>%
  mutate(Sepal.Area = Sepal.Length * Sepal.Width,
         Petal.Area = Petal.Length * Petal.Width) %>%
  group_by(Species)

# View new data
head(new_iris)

# Iris - Boxplot
head(iris)
hist(iris)
boxplot(iris$Sepal.Length ~ iris$Species, horizontal =  TRUE)


p1 <- ppois(5,8, lower.tail = FALSE)
p2 <- ppois(5,8,lower.tail = TRUE)
p1 + p2


# Linear model y summary

a_linear_model <- lm(dist ~ speed, cars)

summary(a_linear_model)

# Histogramas y curva de densidad

  cars %>%  
    filter(eng_size <2.0) %>%  
    ggplot(aes(x = hwy_mpg)) +  
    geom_histogram(binwidht = 5) +.             ;'KM
    geom_density(bw = 5)

