# utilizaremos um banco de dados pré instalado no R :
data("airquality")
summary(airquality) # visualizar infos do DB
airquality # só para vermos o DB em si !

# Para selecionar ou trabalhar separadamente com apenas 
# um campo (coluna) do seu data.frame, deve-seutilizar o$. 

# Repare nas funções abaixo e no uso do sifrão.

head(airquality$Ozone)
## [1] 41 36 12 18 NA 28
tail(airquality$Ozone)
## [1] 14 30 NA 14 18 20
is.vector(airquality$Ozone)# Verifica se cada coluna de um data.frame é vector :
# [1] TRUE
class(airquality$Ozone)# Informa o tipo da coluna## [1] "integer"
unique(senado$Party)# Função que retorna apenas os valores únicos do vetor

# vamos nos aprofundar nas possiblidades de se trabalhar 
# com vetores (em especial, seus parâmetros)
vector <- c(seq(from=0,to=50,by=5.5)) # vetor de 0 a 50, de 5.5 a 5.5
vector #lista todos os elementos
## [1]  0.0  5.5 11.0 16.5 22.0 27.5 33.0 38.5 44.0 49.5
vector[1] #mostra apenas o elemento na posição 1 
## [1] 0.0
vector[2] #apenas o elemento na posição 2
## [1] 5.5