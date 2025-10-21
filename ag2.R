# Carregar pacotes
library(caret)
library(dplyr) 
library(e1071) 

# Dataset iris
data(iris)

# Embaralhar os dados
set.seed(42) 
iris <- iris[sample(nrow(iris)), ] 

# 80% treino e 20% teste com createDataPartition() do pacote caret
divisao <- createDataPartition(iris$Species, p = 0.8, list = FALSE) # seleciona aleatoriamente 80% dos dados
treino <- iris[divisao, ] 
teste  <- iris[-divisao, ] 

# Treinar modelo k-NN (k-nearest neighbors)
modelo <- train(Species ~ ., data = treino, method = "knn")

# Fazer previsões
predicoes <- predict(modelo, newdata = teste)

# Avaliar o modelo
conf <- confusionMatrix(predicoes, teste$Species)
# print(conf)

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

cat("\nA espécie prevista é:", as.character(resultado), "🌸\n")
