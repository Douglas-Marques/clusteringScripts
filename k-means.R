summary(iris) #Mostrando o dataset que iremos 'clusterizar', leia-se agrupar

cluster <- kmeans(iris[1:4], 3) #aplicando o algoritmo de clusterização K-Means, que resume-se em um agrupamento de dados baseado em 'centróides' mais próximo, centróide é uma média ficticia dos dados próximos. Sabendo que existe três espécies de flores no dataset, definimos três grupos para o algoritmo, cada um representando uma espécie diferente.
cluster #Apresenta o resultado da clusterização

table(iris$Species, cluster$cluster) #Cria-se uma tabela comparando os grupos com as espécies reais.

plot(iris[,1:4], col = cluster$cluster) #Plota na tela um gráfico mostrando os dados agrupados de acordo com os dados
