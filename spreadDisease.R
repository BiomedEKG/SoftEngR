#Z góry wybaczcie za pomieszanie jêzyków - ma³o profesjonalnie, wiem, ale myœlê, ¿e póki co
#ka¿dy ogarnie, a poza tym - to narazie same komcie dla ³atwiejszego ogaru ;)

#Osobiœcie proponujê zrezygnowanie zarówno z r jak illMates, poniewa¿ w du¿ej mierze
#ca³a zabawa opiera siê na dobraniu wspó³czynników alpha, beta i gamma, ale mo¿na to 
#jeszcze wzi¹æ pod rozwagê :)

spreadDisease <- function (cellArray, time, neighborhood, r, illMates, alpha, beta, gamma) {
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
  
  #Pocz¹tkowe dane do rozprzestrzeniania
  healths <- N*N #Pocz¹tkowa liczba zdrowych (0) - ca³a macierz
  ills <- 0
  #losowe(?) rozprzestrzenianie chorych - te¿ by mog³o byæ w osobnej funkcji i np. tu rozpatrywaæ obszar
  for (i in 1:N) {
    for (j in 1:N) {
      dx <- i-N/2
      dy <- j-N/2
      R <- sqrt(dx*dx+dy*dy)
      if(R < 10){
        cellArray[i,j] <- 1
        ills <- ills+1
      }
    }
  }
  #Po rozprzestrzenieniu trzeba odj¹æ liczbê chorych od zdrowych, aby wszystko siê zgadza³o - do statsów
  healths <- healths - ills
  
  #Define the Moore neighborhood, i.e. the 8 nearest neighbors or vonNeumann, i.e. the 4 nearest neighbors 
  if(neighborhood == "Moore") {
    neigh = c(1, 0, 1, -1, 0, 1, -1, -1, 1, 1, 0, -1, -1, -1, 0, 1)
    dim(neigh) <- c(8,2)
    neighNumber <- 8
  } 
  if(neighborhood == "Neumann"){
    neigh = c(1, 0, -1, 0, 0, 1, 0, -1)
    dim(neigh) <- c(4,2)
    neighNumber <- 4
  }
  
  #Init empty stats
  stats <- matrix(0,time,5)
  
  stats[1,1] <- 1
  stats[1,2] <- healths
  stats[1,3] <- ills
  
  for (t in 2:time){
    cat(paste("Kolejna chwila czasowa ", t, "\n")) #dobry debbuger jak RStudio radzi sobie z iteracjami! :D 
    stats[t,1] <- t
    healths <- stats[t-1,2]
    ills <- stats[t-1,3]
    cured <- stats[t-1,4]
    dead <- stats[t-1,5]
    
    # iterate over all cells in grid x, for index i=1..N and j=1..N
    for (i in 1:N) {
      for (j in 1:N) {
        # Iterate over the neighbors and spread the disease
        for (k in 1:neighNumber) {
          i2 <- i+neigh[k, 1]
          j2 <- j+neigh[k, 2]
          # Check that the cell is within the grid boundaries
          if ( i2>=1 && j2>=1 && i2<=N && j2<=N ){
            # if cell is in state Susceptible and neighboring cell
            # Infected => Spread infection with probability alpha
            if ( cellArray[i,j] == 0 && cellArray[i2, j2] == 1 ) {
              if ( runif(1, min = 0, max = 1) < alpha ) {
                cellArray[i,j] <- 1 #chorzy
                healths <- healths - 1
                ills <- ills + 1
              }
            }
          }
          
          # If infected => Recover from disease with probability gamma
          if ( cellArray[i,j]==1 && runif(1, min = 0, max = 1) < gamma) {
            cellArray[i,j] <- 2 #wyleczeni (uodpornieni)
            ills <- ills - 1
            cured <- cured + 1
          } 
          # If infected => Death from disease with probability beta ##Jezeli chora -> rzuc kosta czy umrze
          if ( cellArray[i,j]==1 && runif(1, min = 0, max = 1) < beta) {
            cellArray[i,j] <- 3 #dead
            ills <- ills - 1
            dead <- dead + 1
          } 
        }
      }
    }
    #wpisywanie do statsów w kolejnych chwilach czasowych
    stats[t,2] <- healths
    stats[t,3] <- ills
    stats[t,4] <- cured
    stats[t,5] <- dead
  }
  
  dane <- as.data.frame(stats)
  colnames(dane) <- c("Czas", "Zdrowi", "Chorzy", "Uleczeni", "Martwi")
  
  dane
}