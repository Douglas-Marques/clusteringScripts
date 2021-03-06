install.packages('cluster', dependencies = T) #Instala o pacote e suas dependencias
library(cluster) #Carrega o pacote 'e1071' no nosso workspace

cluster <- pam(iris[,1:4], k = 3) #aplicando o algoritmo de clusteriza��o K-Medoid, varia��o do m�todo k-means, onde os centros dos grupos s�o objetos reais e representativos. Sabendo que existe tr�s esp�cies de flores no dataset, definimos tr�s grupos para o algoritmo, cada um representando uma esp�cie diferente.
cluster #Mostra na tela o resultado da clusteriza��o

plot(cluster) #Plota na tela um gr�fico mostrando os dados agrupados de acordo com os dados

table(iris$Species, cluster$clustering) #Cria-se uma tabela comparando os grupos com as esp�cies reais
