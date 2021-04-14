# Vejamos algumas das formas de controlar a inserção e retirada de dados :

# 1 -> Union :
dadosA <- data.frame(ano = c(2016, 2017, 2018),
    produto = c('A', 'B', 'C'),
    valor = c(938, 113, 1748))

dadosB <- data.frame(ano = c(2016, 2017, 2018),
    produto = c('D', 'E', 'F'),
    valor = c(408, 837, 1083))

dados_res <- rbind(dadosA, dadosB)
dados_res

# 2 -> Join :

# 2.1 -> Inner Join (ou apenas Join) :

# Os DB estão no pacote dplyr :
install.packages("dplyr")
library(dplyr)

dados1 <- band_members
dados2 <- band_instruments

# para juntar ambos em 1 data frame, fazemos :
dados1 %>% inner_join(dados2)

# 2.2 -> Left Outer Join :
dados1 %>% left_join(dados2)

# 2.3 -> Right Outer Join :

# chamamos outro banco de dados :
setwd('dados')
empregados <- read_csv('dados/Employees.csv')
departamentos <- read_csv('dados/Departments.csv')

emprego <- departamentos %>%
    right_join(empregados, by = c('Manager'='Employee'))
emprego

# 2.4 -> Full Outer Join :

dados1 %>% full_join(dados2)