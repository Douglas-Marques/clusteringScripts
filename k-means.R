summary(iris) #Mostrando o dataset que iremos 'clusterizar', leia-se agrupar

cluster <- kmeans(iris[1:4], 3) #aplicando o algoritmo de clusteriza��o K-Means, que resume-se em um agrupamento de dados baseado em 'centr�ides' mais pr�ximo, centr�ide � uma m�dia ficticia dos dados pr�ximos. Sabendo que existe tr�s esp�cies de flores no dataset, definimos tr�s grupos para o algoritmo, cada um representando uma esp�cie diferente.
cluster #Apresenta o resultado da clusteriza��o

table(iris$Species, cluster$cluster) #Cria-se uma tabela comparando os grupos com as esp�cies reais.

plot(iris[,1:4], col = cluster$cluster) #Plota na tela um gr�fico mostrando os dados agrupados de acordo com os dados
