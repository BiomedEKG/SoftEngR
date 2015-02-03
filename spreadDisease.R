spreadDisease <- function (cellArray, neighborhood, r, alpha, beta, gamma){
  #   cellArray - macierz (matrix) z komorkami, 0 to zdrowi, 1 chorzy, 2 uleczeni,3 to martwi
  #   neighborhood - (string) rodzaj sasiedztwa, 'Moore' albo 'Neumann'
  #   r - promien sasiedztwa (numeric)
  #   alpha - wspolczynnik zarazliwosci(numeric)
  #   beta - wspolczynnik smiertelnosci(numeric)
  #   gamma - wspolczynnik powrotu do zdrowia (numeric)
  
  #Check dimension of cellArray
  N <- dim(cellArray)[1]
  M <- dim(cellArray)[2]
  
  if(N != M){
    stop("Argument no.1 CELLARRAY must matrix of size NxN");
  }
  
  #Define neighborhood
  # neigh - matrix with indicies of neighbors
  neigh <- switch(neighborhood, 
         "2" =  moore(r), 
        "1" = neumann(r))
    # iterate over all cells in grid x, for index i=1..N and j=1..N
  for (i in 1:N) {
    for (j in 1:N) {
      if (cellArray[i,j] == 0){
          # if cell is in state Susceptible and at leat one of neighboring cell
          # Infected => Spread infection with probability alpha
        for (k in 1:nrow(neigh)){#iterate through all neighbors
          #Get indicies of k-th neighbor
          row_i <- i+neigh[k, 1]
          col_i <- j+neigh[k, 2]
          #if it indicies are inside cell array and cell is infected
          if (row_i>0 && col_i>0 && row_i<=N && col_i<=N && cellArray[row_i, col_i] == 1){
              if (runif(1, min = 0, max = 1) < alpha) {
                cellArray[i,j] <- 1 #chorzy
                break #cell is infected, we could skip to next iteration
              }
          }
        }
      }else{
        # If infected 
        if (cellArray[i,j] == 1){
          # Recover from disease with probability gamma
          if (runif(1, min = 0, max = 1) < gamma) {
            cellArray[i,j] <- 2 #wyleczeni (uodpornieni)
          }else{
        #Death from disease with probability beta
            if (runif(1, min = 0, max = 1) < beta) {
              cellArray[i,j] <- 3 #dead
            } 
          }
        }
      }#end if/else
    }#end for (j in 1:N)
  }#end for (i in 1:N)

  cellArray #zwracana wartosc
}