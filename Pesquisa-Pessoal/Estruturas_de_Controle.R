# testando o laço if / else
salario = 20000

if (salario >= 30000) {
    "Muito alto"
} else if (salario >= 20000) {
    "Mediano"
} else if (salario <= 10000){
    "Baixo"
}

# testando o laço for() :
vectorX = c(10, 20, 30, 40)
for (i in vectorX) {
    print(i/4) 
    # O 'i' recebe cada parte do vectorX que será dividido por 4
}

lista.arquivos <-list.files('dados/dados_loop') #lista todos os arquivos de uma pasta
is.vector(lista.arquivos)

for (i in lista.arquivos) {
    print(read_delim("Vamos ler o arquivo :", i))
    #exemplo: read_delim(i, delim = "|")
}

# vejamos um exemplo legal :
vector_seq = c(1:100) # criamos um vector de numeros 1 ao 100
for (i in vector_seq) {
    if (i %% 15 == 0) {
        print(i)
        # printaremos apenas numeros diviseis por 5
    }
}

# Sobre o laço while() :
i <- 1
j <- 2
while((i <= 10) & (j <= 20)) {
    print(i+j)
    i <- i+2
    j <- j+2
    # veja no que vai dar :
}

# E por fim, as funções : function(var1, var2)
resp_eleitor <- function(id_eleitor) {
    if (id_eleitor == 16 | id_eleitor == 17) {
        "Seu voto é facultativo"
    } else if ((id_eleitor >= 18) & (id_eleitor <= 59)) {
        "Seu voto é obrigatório"
    } else if ((id_eleitor >= 65) & (id_eleitor <= 199)) {
        "Seu voto é facultativo novamente"
    }
}

resp_eleitor(16)