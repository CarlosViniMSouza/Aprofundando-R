# Criando arquivo .csv :
Nome <- c("Carlos", "Vinicius", "Pedro", 
          "João", "Lucas", "Gustavo", 
          "Felipe", "Tiago", "Daniel", 
          "Danilo", "William", "Ronaldo", "Túlio")

Dia <- c(1401, 1202, 2103, 
         0407, 0811, 0102, 
         2206, 2801, 1010, 
         0909, 2109, 1703, 2412) 

Cargo <- c("Cientista de Dados", "Engenheiro de Dados", "Desenvolvedor de I.A.",
           "Administrador", "Contador", "Economista",
           "Advogado", "Telemarketing", "Recursos Humanos",
           "Tech Lead", "Arquiteto", "Sócio", "Gerente de T.I.")

Cadastro <- c(11809515, 1360795, 11600160,
              11340835, 12358862, 10995129, 
              11478101, 18493014, 10240985, 
              10761373, 12909947, 10595961, 12970934)

Salario <- c(5494, 3970, 4157,
        	 3976, 9403, 7833,
             2965, 4613, 2126,
             3192, 4994, 4343, 6140) # em R$

Registro <- data.frame(Nome, Dia, Cargo, Cadastro, Salario)
Registro # vejamos a tabela formada :

write.csv(Registro, file ='Registro2.csv', append = FALSE, quote = TRUE, sep = ";")
save(Registro,file ='Registros3.Rdata')