# Vejamos 2 fromas de se extrair dados na internet :

# 1 -> API's :
# API é uma forma de comunicação de dados mais apropriada para as trocas de informações entre softwares.
# Normalmente APIs trocam dados em formato hierárquico.

# para tal, temos uma biblioteca R para fazer isso, o 'jasonlite'
install.packages("jsonlite")
library(jsonlite)

# No exemplo a seguir utilizamos a API do github (portal para repositórios) 
carlos.rep <- jsonlite::fromJSON("https://api.github.com/users/CarlosViniMSouza/repos")
head(carlos.rep[,c('name','description')],15)

# 2 -> Web Scraping :
# Existe um pacote em R que facilita muito o cosumo de dados em HTML: rvest, criado também 
# por HadleyWickham. Orvestmapeia os elementos HTML (tags) de uma página web e facilita a 
# “navegação” do Rpor esses nós da árvore do HTML.

library(rvest)

web <-read_web("https://pt.wikipedia.org/wiki/Lista_de_redes_de_televis%C3%A3o_do_Brasil")

web.table <- web %>% web_nodes("table")
dados <- web.table[[1]] %>% web_table()

dados <- dados %>% select(-`Lista de Midias`)
head(dados)