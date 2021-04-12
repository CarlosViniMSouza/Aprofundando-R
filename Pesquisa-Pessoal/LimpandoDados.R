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
data("USArrests")
str(USArrests)

# Transformando o nome das linhas em colunas
USA_Estados$State <-rownames(USA_Estados)
head(USA_Estados)

USAlong <-USA_Estados %>% gather(key ="tipo_crime", value ="valor", -State)
head(USAlong)
# adicionamos uma coluna 'tipo_crime' na tabela USArrests

# Spread
table2_alterada <- table2 %>% spread(key =type,value =count)
head(table2_alterada)

# Separate
table3_alterada <-table3 %>% 
separate(rate,into =c("cases","population"),sep='/')
head(table3_alterada)

# Unite
table2.relatorio <- table2 %>% 
    unite(type_year, type, year) %>% 
        spread(key =type_year,value =count,sep ='_')
table2.relatorio

# Controlando Textos :
a1 <-'apple'
b2 <-'facebook'
c3 <-'google'
paste(a1, b2, c3)

install.packages('stringr')
library(stringr)

#vamos usar o DB cnae para testar o pacote strigr :
cnae.texto <-c('0 Elaboração do projeto',
                '1 Elaboração do produto',
                '2 Elaboração do marketing',
                '3 Elaboração do pitch',
                '4 Produção de todos as soluções',
                '5 Produção finalizando',
                '6 Projeto, produto, marketing e pitch prontos',
                '7 Apresente o resultado')
cnae <-str_sub(cnae.texto, 0, 2)
texto <-str_sub(cnae.texto, 4)

cnae
