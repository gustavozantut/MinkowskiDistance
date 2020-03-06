# Criando os pontos -------------------------------------------------------
vetor <- c(-3,-1,3,10,0,0,-1,4,0,9,6,-1,3,0,10)
matriz<-matrix(vetor,5,3)
matriz


# Criando a matriz vazia paa gravar os resultados -------------------------
matriz_distancias<-matrix(NA,5,5)


# Para n=1 -----------------------------------------------
n=1

# Preenchendo a matriz com a distância entre os pontos --------------------
for (l in 1:5){       
  
  for(c in 1:5){        
    
    matriz_distancias[l,c] <- 
      
        
          sum(
            abs(
        (matriz[l,]-matriz[c,])^n
            )
              )^(1/n)
      
  }
}


# Visualizando e comparando resultados ------------------------------------
matriz_distancias
D<-as.matrix(dist(matriz,method = "minkowski",p=n, diag = 1,upper = 1))
D
matriz_distancias-D


# Para n3 -----------------------------------------------
n=3

# Preenchendo a matriz com a distância entre os pontos --------------------
for (l in 1:5){       
  
  for(c in 1:5){        
    
    matriz_distancias[l,c] <- 
      
      
      sum(
        abs(
          (matriz[l,]-matriz[c,])^n
        )
      )^(1/n)
    
  }
}


# Visualizando e comparando resultados ------------------------------------
matriz_distancias
D<-as.matrix(dist(matriz,method = "minkowski",p=n, diag = 1,upper = 1))
D
matriz_distancias-D

#Podemos observar que quando o n da distancia de minkowski é 1, ela é igual a distância
#de manhattan, ocorre o mesmo para a distancia euclidiana quando n=2
as.matrix(dist(matriz,method = "minkowski",p=1, diag = 1,upper = 1))-as.matrix(dist(matriz, method = "manhattan", diag = 1,upper = 1))
as.matrix(dist(matriz,method = "minkowski",p=2, diag = 1,upper = 1))-as.matrix(dist(matriz, method = "euclidian", diag = 1,upper = 1))



