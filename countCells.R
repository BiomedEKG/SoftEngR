countCells <- function(cellArray, stats, t){
  #c("Healthy", "Ill", "Immune", "Dead")
  #Zliczanie komorek
  ill <- sum(cellArray == 1)
  healthy <- sum(cellArray == 0)
  cured <- sum(cellArray == 2)
  dead <- sum(cellArray == 3)
  #wpisywanie do macierzy
  stats[t, "Healthy"] <- healthy
  stats[t, "Ill"] <- ill
  stats[t, "Immune"] <- cured
  stats[t, "Dead"] <- dead
  stats #zwracanie macierzy
}