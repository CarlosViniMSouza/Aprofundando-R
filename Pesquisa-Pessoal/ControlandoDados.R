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

# Como ver o tipo de dado que recebemos ? --> Eis como : class(var)
isto_eh_num = 180
mais.isto_eh_num = 18e0
class(isto_eh_num)
class(mais.isto_eh_num)

#faça as seguintes atribuições
vector.char <-c('type1','type2','type3')
vector.num <-c(1,1*2,2*2,4*2)
vector.num.repetidos <-c(rep(2,25))

#usando funcão para repetir números
vector.num.seq <-c(seq(from=0,to=100,by=10))

#usando função para criar sequências
vector.log <-c(TRUE,FALSE)

##veja o conteúdo das variáveis
vector.char
vector.num
vector.num.repetidos
vector.num.seq
vector.log

# vamos criar agora um Data Frame (data.frame)
nome <- c("Carlos", "Vinicius", "Sr.Souza", "Mr.Monteiro")
idade <- c(20, 30, 40, 50)
eh_adulto <- c(TRUE, TRUE, TRUE, FALSE)
uf <- c("Santa Catarina", "Amazonas", "Paraná", "Rio de janeiro")
saldo_bancario <- c("R$100000", "R$50000", "R$75000", "R$100")
clientes <- data.frame(nome, idade, eh_adulto, uf, saldo_bancario)
clientes

str(clientes)

class(clientes) # vai devolver com resp.: "data.frame"
class(clientes$nome) #isso eh valido para variaveis que integram data frames

# Para convertermos uma variavel ou info em
# outro tipo de dados, usamos a função : as.<data-type>()
# data-type = character, numeric, double, integrer, etc
as.character(clientes$idade)
as.double(clientes$idade)

# utilizaremos um banco de dados pré instalado no R :
data("airquality")
summary(airquality) # verificando ocorrência de NA
airquality # só para vermos o DB em si !

is.na(airquality$Ozone) 
is.na(airquality$Wind)
is.na(airquality$Day)
# se houver dados faltantes, retornará TRUE;
# caso contrário, retornará FALSE

# Daqui a pouco, veremos : Estruturas de Controle de Fluxo
# enloba : if/else; for; while; e funções inclusive