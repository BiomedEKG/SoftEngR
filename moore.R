moore <- function(i, j, R, M){
  rInd <- seq(-R, R, 1)
  cInd <- rInd
  rInd <- rInd + i
  cInd <- cInd + j
  m <- expand.grid(rInd, cInd)
  ind <- (m[,1]-1)*M + m[,2]
  ind <- ind[ind>0 & ind<=(M^2)]
  ind
}