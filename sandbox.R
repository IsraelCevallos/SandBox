library(ggplot2)

dt <- data.frame(1:1000, x = rnorm(1000))

g <- ggplot(dt, aes(x)) + geom_histogram()

ggsave("figure.png", g)