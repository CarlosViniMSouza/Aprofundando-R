'Aqui vamos explorar o quesito Objetos Geométricos, subdivididos em :'

'       Tipo             Objeto Geométrico
Dispersão(scatterplot)      geom_point()
Gráfico de bolhas           geom_point()
Gráfico de barras           geom_bar() e geom_col()
Histograma                  geom_histogram()
Boxplot                     geom_boxplot()
Densidade                   geom_density()
Gráfico de linhas           geom_line()'

'É importante saber-se que um gráfico do ggplot2 pode ter mais de um objeto geométrico, 
cada um formando uma camada. Por exemplo, uma camada de pontos e outra de linhas que 
conectam os pontos.'

library(dplyr)
library(ggplot2)
data("mtcars")
data("iris")

mtcars <- mtcars %>% mutate(name =rownames(mtcars))
ggplot(mtcars,aes(y =mpg,x =disp))+
    geom_point()+
    geom_smooth()

' Vamos ver como o gráfico fica com Escalas !'

ggplot(iris, aes(x = Petal.Length, y = Petal.Width, color = Species))+
    geom_point()

' Editando as escala das cores :'

ggplot(iris, aes(x = Petal.Length, y = Petal.Width, color = Species))+
    geom_point()+
    scale_color_manual(values = c("orange","yellow","red"))

' Alterando as escalas dos eixos x e y, utilizaremos as funções 
 scale_x_continuous()escale_y_continuous() :'

ggplot(iris, aes(x =Petal.Length, y =Petal.Width, color =Species))+
    geom_point()+
    scale_color_manual(values = c("orange","yellow","red"))+
    scale_x_continuous(name = "Petal Length", breaks =1:7)+
    scale_y_continuous(name = "Petal Width", breaks =0:3,
        limits =c(0,3))
