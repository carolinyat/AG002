# 🌸 Classificando Flores Íris com Machine Learning (k-NN e R)

Este projeto tem como objetivo aplicar técnicas de aprendizado de máquina para classificar flores do gênero *Íris* em três espécies: **Setosa, Versicolor e Virginica**. Para isso, utilizamos o algoritmo **k-Nearest Neighbors (k-NN)** implementado em **R**, com o auxílio do pacote `caret`.

O trabalho foi desenvolvido como parte da **AG2 de Engenharia de Computação/Software**, abordando desde o pré-processamento dos dados até a avaliação do modelo e testes com entrada manual do usuário.

---

## 1. Sobre o Dataset Íris

O *Iris Dataset* é um dos conjuntos de dados mais conhecidos da área de Machine Learning. Ele contém:

- **150 amostras**
- **3 espécies**
- **4 atributos numéricos**, sendo eles:
  - *Sepal.Length* (cm)
  - *Sepal.Width* (cm)
  - *Petal.Length* (cm)
  - *Petal.Width* (cm)

Cada linha representa uma flor e suas medidas. O objetivo é prever a espécie com base nesses valores.

---

## 2. Objetivo do Projeto

O projeto tem como finalidade desenvolver e disponibilizar um modelo capaz de:

- Embaralhar e separar os dados
- Dividir o conjunto em 80% para treino e 20% para teste
- Treinar um modelo utilizando k-NN
- Avaliar o desempenho do modelo por meio de matriz de confusão
- Permitir a classificação de novas amostras inseridas manualmente pelo usuário

---

## 3. Tecnologias Utilizadas

| Tecnologia | Finalidade |
|------------|------------|
| **R** | Linguagem base do projeto |
| **caret** | Treinamento e avaliação do modelo |
| **dplyr** | Manipulação dos dados |
| **e1071** | Funções auxiliares para classificação |

---

## 4. Pipeline do Modelo

O fluxo de execução do modelo segue as etapas:

1. Carregamento do dataset
2. Embaralhamento dos dados (redução de viés)
3. Divisão em treino (80%) e teste (20%)
4. Treinamento com o algoritmo k-NN
5. Avaliação por meio de matriz de confusão
6. Predição interativa com entrada do usuário

---

## 5. Como Executar o Projeto

### Via *VS Code*

1. Instale R e o plugin "R Extension" no VS Code  
2. Abra um terminal R via: `Ctrl + Shift + P` → **R: Create R Terminal**  
3. Execute o script `requirements.R` para instalação dos pacotes
```r
source("requirements.R")
```
4. Execute o script principal do projeto `ag2.R`
```r
source("ag2.R")
```
5. Digite os valores quando o script solicitar

---

## 6. Exemplos de Entrada e Saída

Entrada do usuário:

```r
Comprimento da Sépala: 5.1
Largura da Sépala: 3.5
Comprimento da Pétala: 1.4
Largura da Pétala: 0.2
```

Saída esperada:

```r
A espécie prevista é: setosa 🌸
```

---

## 7. Avaliação do Modelo

O modelo é avaliado pela matriz de confusão e pela acurácia.
Nos testes, foi obtida acurácia próxima de 100%, o que confirma a boa separabilidade do dataset.

---

## 8. Conclusão

O modelo k-NN se mostrou eficiente para o problema de classificação de flores Íris, atingindo alta acurácia e fornecendo previsões consistentes. O projeto cumpre todas as etapas de um pipeline de Machine Learning supervisionado, desde o pré-processamento até a inferência final.

---

## Autores:

- Adson Ferreira <br>
- Caroliny Abreu