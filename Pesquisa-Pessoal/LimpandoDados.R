# seguindo o livro, vamos instalar o tidyverse :
install.packages("tidyverse")
library(tidyverse)
# com o pacote carregado, vamos explorar o DB table:

table1
table2
table3
table4a
table4b
table5

# O pacote tidyr é um dos melhores pacotes para limpeza de dados.
install.packages("tidyr")
library(tidyr)

# Vamos explorar algumas funcionalidades :

# 1 - Gather()
# Usaremos dados disponíveis no R base para exemplificar:
data("USArrests")
str(USArrests)

# Transformando o nome das linhas em colunas
USA_Estados$State <-rownames(USA_Estados)
head(USA_Estados)

USAlong <-USA_Estados %>% gather(key ="tipo_crime", value ="valor", -State)
head(USAlong)
# adicionamos uma coluna 'tipo_crime' na tabela USArrests

# Spread
# É a operação antagônica do gather(). Ela espalha os valores de 
# duas colunas em diversos campos !
table2_alterada <- table2 %>% spread(key =type,value =count)
head(table2_alterada)