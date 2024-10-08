## Certifique-se de estar no mesmo diretorio
## do arquivo 'relatorio-aula4-template.Rmd'.
## Isso pode ser verificado com:
# file.exists("relatorio-aula4-template.Rmd")

library(rmarkdown)
#library(knitr)

automatiza_relatorio <- function(minha_cidade) {

  # entrada: minha_cidade, caractere
  # saida: nome do arquivo html gerado

  # minha_cidade = "Berlin"
  saida <- render(
    input = "relatorio-aula4-template.Rmd",
    params = list(cidade = minha_cidade),
    output_file = paste0("relatorio-", minha_cidade, ".html"),
    #output_file = paste0("relatorio-", minha_cidade, ".pdf"),
    #output_file = paste0("relatorio-", minha_cidade),
    #output_format =  "pdf_document"
  )
  
  saida
}

## como rodar a automatiza para uma cidade
# automatiza_relatorio(minha_cidade = "NewYork")

# ------------------------------------------------------------------------------
# como automatizar a geração de relatório para as cidades

# para ter o nome das cidades
source("gera-dados.R")
# extrai o nome das colunas da tabela de dados, tirando a 1a coluna
nomes_cidades <- names(dados_met[, -1])
nomes_cidades


# for(indice in intervalo){
#   funcao(indice) 
# }
# 
# for(indice in 1:10){
#   print(indice^2)
# }


# laço ou looping para gerar o relatório para cada cidade
for(icity in nomes_cidades){
  print(icity)
  automatiza_relatorio(minha_cidade = icity)
}






