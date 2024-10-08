
## importando dados da internet
## "https://github.com/lhmet/adar-ufsm/tree/master/data"

link <- "https://raw.githubusercontent.com/lhmet/adar-ufsm/master/data/cityrain.csv"
link

dados_met <- read.csv(link, head = TRUE)
dados_met
