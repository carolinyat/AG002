#  Instalação de dependências do projeto 
pacotes <- c("caret", "dplyr", "e1071")

for (pkg in pacotes) {
  if (!require(pkg, character.only = TRUE)) {
    message(paste("Instalando pacote:", pkg, "..."))
    install.packages(pkg)
    library(pkg, character.only = TRUE)
  } else {
    message(paste("✅ Pacote já instalado:", pkg))
  }
}

message("\nTodos os pacotes foram instalados e carregados com sucesso!")
