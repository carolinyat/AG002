# Instalação dos pacotes 
install.packages("caret") 
install.packages("dplyr") 
install.packages("e1071")

# Carregar pacotes
library(caret) # biblioteca par treinamento e avaliação de modelos de ML
library(dplyr) # biblioteca para manipulação de dados
library(e1071) # funções extras para alguns modelos do caret

# Dataset iris (150 amostras, 3 espécies, 4 atributos)
data(iris)

# Embaralhar os dados
set.seed(42) # aleatoriedade seja reproduzível, o mesmo sorteio sempre que você rodar
iris <- iris[sample(nrow(iris)), ] # ordem aleatória dos índices das linhas e embaralha as flores

# 80% treino e 20% teste com createDataPartition() do pacote caret
divisao <- createDataPartition(iris$Species, p = 0.8, list = FALSE) # seleciona aleatoriamente 80% dos dados
treino <- iris[divisao, ] # recebe os dados para treinar o modelo
teste  <- iris[-divisao, ] # recebe o restante dos dados para testar o modelo

# Treinar modelo k-NN (k-nearest neighbors)
modelo <- train(Species ~ ., data = treino, method = "knn")

# Fazer previsões
predicoes <- predict(modelo, newdata = teste)

# Avaliar o modelo
conf <- confusionMatrix(predicoes, teste$Species)
print(conf)

# Entrada manual do usuário 
cat("\nInsira as medidas da flor que deseja classificar:\n")

sl <- as.numeric(readline("Comprimento da Sépala (cm): "))
sw <- as.numeric(readline("Largura da Sépala (cm): "))
pl <- as.numeric(readline("Comprimento da Pétala (cm): "))
pw <- as.numeric(readline("Largura da Pétala (cm): "))

nova_amostra <- data.frame(Sepal.Length = sl,
                           Sepal.Width = sw,
                           Petal.Length = pl,
                           Petal.Width = pw)

resultado <- predict(modelo, newdata = nova_amostra)

cat("\n🔎 A espécie prevista é:", as.character(resultado), "\n")
