install.packages('cluster', dependencies = T) #Instala o pacote e suas dependencias
library(cluster) #Carrega o pacote 'e1071' no nosso workspace

cluster <- pam(iris[,1:4], k = 3) #aplicando o algoritmo de clusterização K-Medoid, variação do método k-means, onde os centros dos grupos são objetos reais e representativos. Sabendo que existe três espécies de flores no dataset, definimos três grupos para o algoritmo, cada um representando uma espécie diferente.
cluster #Mostra na tela o resultado da clusterização

plot(cluster) #Plota na tela um gráfico mostrando os dados agrupados de acordo com os dados

table(iris$Species, cluster$clustering) #Cria-se uma tabela comparando os grupos com as espécies reais
