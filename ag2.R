# Carregar pacotes
library(caret)
library(dplyr) 
library(e1071) 

# --- Ler dados do CSV ---
iris <- read.csv("iris.csv") 

# --- Converter valores da espécie para números inteiros ---
iris <- iris %>%
  mutate(species = case_when(
    species == "Iris-setosa" ~ 1L,     
    species == "Iris-versicolor" ~ 2L, 
    species == "Iris-virginica" ~ 3L  
  ))

# --- Dividir dados em treino e teste ---
set.seed(42) 
iris <- iris[sample(nrow(iris)), ] 

divisao <- createDataPartition(as.factor(iris$species), p = 0.8, list = FALSE) 
treino <- iris[divisao, ] 
teste  <- iris[-divisao, ] 

# --- Converter a coluna 'species' para fator ---
treino$species <- as.factor(treino$species)
teste$species <- as.factor(teste$species)

# --- Treinar modelo k-NN (k-nearest neighbors) ---
modelo <- train(species ~ ., data = treino, method = "knn")

predicoes <- predict(modelo, newdata = teste)

# --- Exibir métricas de avaliação ---
conf <- confusionMatrix(predicoes, teste$species)

cat("--- Avaliação do Modelo (Acurácia e Matriz de Confusão) ---\n")
print(conf)
cat("----------------------------------------------------------\n")

# --- Entrada manual e predição com nome ---
cat("\nInsira as medidas da flor que deseja classificar:\n")

sl <- as.numeric(readline("Comprimento da Sépala (cm): "))
sw <- as.numeric(readline("Largura da Sépala (cm): "))
pl <- as.numeric(readline("Comprimento da Pétala (cm): "))
pw <- as.numeric(readline("Largura da Pétala (cm): "))

nova_amostra <- data.frame(sepal_length_cm = sl,
                           sepal_width_cm = sw,
                           petal_length_cm = pl,
                           petal_width_cm = pw)

resultado <- predict(modelo, newdata = nova_amostra)

# --- Converter o resultado de volta para o nome da espécie ---
resultado_num <- as.character(resultado) 
resultado_nome <- case_when(
  resultado_num == "1" ~ "setosa",
  resultado_num == "2" ~ "versicolor",
  resultado_num == "3" ~ "virginica"
)

cat("\nA espécie prevista é:", resultado_nome, "\n")