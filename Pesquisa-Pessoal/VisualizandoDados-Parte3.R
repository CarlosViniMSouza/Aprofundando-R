install.packages("dplyr")
install.packages("ggplot2")
install.packages("ISLR")
library(dplyr)
library(ggplot2)
library(ISLR)
data("Wage") # nosso banco de dados para testes

'Vejamos um exemplo para controlar os eixos :'

ggplot(Wage,aes(x = age, y = wage, color = education))+
    geom_point()+
        scale_x_continuous("Idade", breaks = seq(0, 100, 5),
                                    expand = c(0, 10))+
        scale_y_continuous("Salário",labels = function(x) paste0("US$ ", x),
                                    limits = c(0, 300))

ggplot(Wage, aes(x = age, y = wage, color = education))+
    geom_boxplot()+
        scale_x_discrete("Idade", labels = c(0, 100))+
            labs(y ="Crescimento Educacional")

'Ao trabalharmos com séries temporais, é comum termos que usar datas'

ggplot(economics,aes(x =date,y =unemploy))+
    geom_line()

# alterando o gráfico para grafar o mês de Janeiro/1970 :
ggplot(economics,aes(x =date,y =unemploy))+
    geom_line()+
        scale_x_date(date_labels ="%b/%Y")

'# VOU ENCERRAR O APROFUNDANDO-R POR AQUI'
'TEM MUITO CONTEÙDO A SER EXPLORADO E MEU'
'TEMPO ESTÁ ENCURTANDO, UM DIA (TALVEZ) EU'
'EU VOLTE A TRABALHAR NESSE PROJETO'