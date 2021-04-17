# Aqui, vamos explorar principalmente o ggplot2 :
# E vamos usar o Iris.csv como DataBase :

iris <- read.csv("Iris.csv")
iris

# Para iniciarmos o pacote, fazemos :
install.packages("ggplot2")
library(ggplot2)
install.packages("tidyverse")
libray(tidyverse)

graph <- ggplot(iris, aes(y = Petal.Width, x = Species)) +
        geom_point()
graph

# assim se inicia um gráfico com ggplot (bem básico !)