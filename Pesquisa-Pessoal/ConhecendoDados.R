#Para O R ler os dados em uma determinada pasta, indicamos o caminho
#usando setwd('caminho até a pasta')
setwd("C:/Users/CarlosViniMSouza/Documents/Programacao/Programacao_R/R_Code/Pesquisa-Pessoal")

# Depois usamos o getwd() para saber se seguiu o caminho, e no meu caso, deu certo!
getwd()

# Para instalar um pacote, execute o seguinte comando:
#install.packages("dplyr") # instala um famoso pacote de manipulação de dados

# Sempre que fizer um novo código, terá que carregar a biblioteca do 'dplyr' pelo seguinte com.:
library(dplyr)

# Pacote p/ Leitura de Dados :
library(readr)

# O pacote tidyr é mais um dos pacotes criados por Hadley Wickham.
#install.packages("tidyr") --> está feito !
library(tidyr)

# Vamos começar a analisar os dados dos 2 vetores que criamos nas 
# ultimas linhas do 'modelo_02.R'
#install.packages("ggplot2")
#install.packages("esquisse")
library(ggplot2)
library(esquisse)

iris <-read_csv("Iris.csv") #chamando o arquivo de dados

head(iris) # vejamos o topo do arquivo
tail(iris) # vejamos a parte inferior do arquivo

# Para verificar o tipo do objeto, ou seja, sua classe, utilizaremos:
class(iris)

# Já para verificar a estrutura do objeto, ou seja, seus campos (quando aplicável):
str(iris) # eSTRutura

# Para verificar estatísticas básicas do objeto 
# (média, mediana, quantis, mínimo, máximo etc.), 
# quando aplicaveis:
summary(iris) # Sumario

# read_delim() --> onde você pode informar qualquer separador (; para virar 'csv')