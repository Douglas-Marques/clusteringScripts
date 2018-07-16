install.packages('e1071', dependencies = T) #Instala o pacote e suas dependencias
library(e1071) #Carrega o pacote 'e1071' no nosso workspace

summary(iris) #Mostrando o dataset que iremos 'clusterizar', leia-se agrupar

cluster <- cmeans(iris[,1:4], 3) #Agrupa os dados utilizando o algoritmo C-Means Fuzzy, que agrupa os dados de acordo com uma probabilidade deles pertencerema aquele grupo
cluster #Mostra na tela o resultado da clusterização

table(iris$Species, cluster$cluster) #Cria-se uma tabela comparando os grupos com as espécies reais
