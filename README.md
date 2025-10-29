# Classificando Flores Íris com Machine Learning (k-NN e R)

Este projeto aplica técnicas de **Aprendizado de Máquina supervisionado** para classificar flores do gênero *Íris* em três espécies: **Setosa**, **Versicolor** e **Virginica**.  
O algoritmo utilizado é o **k-Nearest Neighbors (k-NN)**, implementado em **R** com o auxílio do pacote `caret`.

O trabalho foi desenvolvido como parte da **AG2 de Engenharia de Computação/Software**..

---

## 1. Sobre o Dataset Íris

O *Iris Dataset* é um clássico da área de Machine Learning, composto por:

- **150 amostras**  
- **3 espécies distintas**  
- **4 atributos numéricos**, sendo eles:  
  - `sepal_length_cm` — Comprimento da sépala (cm)  
  - `sepal_width_cm` — Largura da sépala (cm)  
  - `petal_length_cm` — Comprimento da pétala (cm)  
  - `petal_width_cm` — Largura da pétala (cm)  

Cada linha representa uma flor com suas medidas morfológicas.  
O objetivo é prever a espécie (*Setosa*, *Versicolor* ou *Virginica*) a partir dessas medidas.

---

## 2. Objetivo do Projeto

O projeto tem como finalidade criar um modelo capaz de:

- Embaralhar o conjunto de dados para reduzir viés;  
- Dividir o dataset em **80% para treino** e **20% para teste**;  
- Treinar o modelo com o algoritmo **k-NN**;  
- Avaliar o desempenho por meio de **matriz de confusão** e **acurácia**;  
- Classificar novas amostras inseridas manualmente pelo usuário, retornando o nome da espécie prevista.

---

## 3. Tecnologias Utilizadas

| Tecnologia | Finalidade |
|-------------|-------------|
| **R** | Linguagem principal do projeto |
| **caret** | Treinamento e validação do modelo |
| **dplyr** | Manipulação e transformação dos dados |
| **e1071** | Suporte ao algoritmo k-NN e métricas estatísticas |

---

## 4. Etapas do Pipeline

1. **Leitura dos dados** do arquivo CSV local (`iris.csv`);  
2. **Conversão dos nomes das espécies** para valores inteiros (1, 2 e 3) e posteriormente para fator;  
3. **Embaralhamento aleatório** dos registros;  
4. **Divisão treino/teste** (80% / 20%) com `createDataPartition`;  
5. **Treinamento** do modelo `k-NN` via `caret::train`;  
6. **Avaliação** do modelo com `confusionMatrix`;  
7. **Predição interativa** com entrada manual e conversão do resultado numérico para o **nome da espécie**.

---

## 5. Como Executar o Projeto

### Pré-requisitos

- Ter o **R** instalado  

### Execução no VS Code

1. Abra o projeto no **VS Code**  
2. Crie um terminal R:  
   `Ctrl + Shift + P` → **R: Create R Terminal**  
3. Instale os pacotes necessários:  
   ```r
   source("requirements.R")
   ```
4. Execute o script principal (`ag2.R`):  
   ```r
   source("ag2.R")
   ```
5. Quando solicitado, insira manualmente as medidas da flor para previsão.

---

## 6. Exemplo de Entrada e Saída

### Entrada
```r
Comprimento da Sépala (cm): 5.1
Largura da Sépala (cm): 3.5
Comprimento da Pétala (cm): 1.4
Largura da Pétala (cm): 0.2
```

### Saída
```r
A espécie prevista é: setosa 
```

---

## 7. Avaliação do Modelo

Durante os testes, o modelo apresentou **alta acurácia** (100%),  
demonstrando excelente separabilidade entre as três espécies.  

A **matriz de confusão** exibe a precisão das classificações em cada classe,  
confirmando que o k-NN foi uma escolha adequada para este dataset, tornando-o balanceado e bem estruturado.

---

## 8. Conclusão

O modelo **k-Nearest Neighbors** mostrou-se eficaz na classificação de flores Íris,  
atingindo desempenho notável e oferecendo resultados intuitivos e reprodutíveis.  
O projeto passa por todas as etapas de um processo de aprendizado de máquina — desde o preparo dos dados até a previsão final — de uma maneira simples e direta, ajudando a entender na prática como funciona um modelo de classificação.
---

## 👩‍💻 Autores

- **Adson Ferreira**
- **Caroliny Abreu**
