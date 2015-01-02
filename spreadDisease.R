#Z góry wybaczcie za pomieszanie jêzyków - ma³o profesjonalnie, wiem, ale myœlê, ¿e póki co
#ka¿dy ogarnie, a poza tym - to narazie same komcie dla ³atwiejszego ogaru ;)

#Osobiœcie proponujê zrezygnowanie zarówno z r jak illMates, poniewa¿ w du¿ej mierze
#ca³a zabawa opiera siê na dobraniu wspó³czynników alpha, beta i gamma, ale mo¿na to 
#jeszcze wzi¹æ pod rozwagê :)

spreadDisease <- function (cellArray, time, neighborhood, r, illMates, alpha, beta, gamma){
  #   cellArray - macierz (matrix) z komorkami, 0 to zdrowi, 1 chorzy, 2 uleczeni,3 to martwi
  #   time - czas symulacji (numeric)
  #   neighborhood - (string) rodzaj sasiedztwa, 'Moore' albo 'Neumann'
  #   r - promien sasiedztwa (numeric)
  #   illMates - ile zarazonych sasiadow komorki, sprawia, ze komorka moze sie zarazic
  #   alpha - wspolczynnik zarazliwosci(numeric)
  #   beta - wspolczynnik smiertelnosci(numeric)
  #   gamma - wspolczynnik powrotu do zdrowia (numeric)
  #   stats - (najlepiej data frame, z wektorem czasu, i liczba chorych, zarazonych i martwych w danej chwili czasowej)
  
  #   ALGORYTM ZAK£ADA, ¯E OSOBNIK ULECZONY JEST UODPORNIONY I NIE MO¯E SIÊ JU¯ ZARAZIÆ!!!
  #   To te¿ proponujê poddaæ dyskusji. Mog³oby to zale¿eæ od np. typu wirusa ;)
  library('plotrix')
  #Pocz¹tkowe dane do rozprzestrzeniania
  healths <- sum(cellArray[cellArray == 1])
  cured <- sum(cellArray[cellArray == 2])
  dead <- sum(cellArray[cellArray == 3])
  
  #Check dimension of cellArray
  N <- dim(cellArray)[1]
  M <- dim(cellArray)[2]
  
  if(N != M){
    stop("Argument no.1 CELLARRAY must matrix of size NxN");
  }
  #Init number of ill cells
  ills <- N*N - healths
  
  #Define neighborhood
  handle <- switch(neighborhood, 
         "Moore" = function(i,j, R, N) moore(i,j,R,N), 
        "Neumann" = function(i,j, R, N) neumann(i,j,R,N))
  
  #Init empty stats
  stats <- matrix(0,time,5)
  stats[1,1] <- 1
  stats[1,2] <- healths
  stats[1,3] <- ills
  stats[1,4] <- cured
  stats[1,5] <- dead
  
  #Additional variables #for visualization
  x<- seq(1,N,1)
  y<- seq(1,N,1)
  col.labels <- c("Podatni na chorobê", "Chorzy", "Udpornieni", "Martwi")
  testcol<-color.gradient(c(0,1),0,c(1,0),nslices=4)
  
  for (t in 2:time){
    cat(paste("Kolejna chwila czasowa ", t, "\n")) #dobry debbuger jak RStudio radzi sobie z iteracjami! :D 
    stats[t,1] <- t
    #Retruve values from array
    healths <- stats[t-1,2]
    ills <- stats[t-1,3]
    cured <- stats[t-1,4]
    dead <- stats[t-1,5]
    
    # iterate over all cells in grid x, for index i=1..N and j=1..N
    for (i in 1:N) {
      for (j in 1:N) {
        # Get indicies of neighbours in radius of r
        ind <- handle(i,j, r, N)
        if (cellArray[i,j] == 0){
            # if cell is in state Susceptible and at leat one of neighboring cell
            # Infected => Spread infection with probability alpha
              if (any(cellArray[ind]==1) && runif(1, min = 0, max = 1) < alpha){
                cellArray[i,j] <- 1 #chorzy
                healths <- healths - 1
                ills <- ills + 1
              }
        }else{
          
          # If infected => Recover from disease with probability gamma
          if (runif(1, min = 0, max = 1) < gamma) {
            cellArray[i,j] <- 2 #wyleczeni (uodpornieni)
            ills <- ills - 1
            cured <- cured + 1
          }else{
          # If infected => Death from disease with probability beta ##Jezeli chora -> rzuc kosta czy umrze
            if (runif(1, min = 0, max = 1) < beta) {
              cellArray[i,j] <- 3 #dead
              ills <- ills - 1
              dead <- dead + 1
            } 
          }
        }
      }
    }
    #wpisywanie do statsów w kolejnych chwilach czasowych
    stats[t,2] <- healths
    stats[t,3] <- ills
    stats[t,4] <- cured
    stats[t,5] <- dead
    #update display
    #image(x, y, cellArray, ylim = rev(range(y)), yaxs = "i", xaxs = "i")
    par(mar=c(7,4,4,6))
    color2D.matplot(cellArray,c(0,1),0,c(1,0), main="Rozwój choroby")
    color.legend(1.05*N,0.2*N,1.07*N,0.55*N,col.labels,testcol,align="rb",gradient="y")
  }

  dane <- as.data.frame(stats)
  colnames(dane) <- c("Czas", col.labels)
  
  dane
}