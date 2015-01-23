neumann <- function(i,j,R, N){
  v <- seq(1, N, 1)
  m <- rep(v,  each = N)
  x <- matrix(m, N, N)
  m <- rep(v, times= N)
  y <- matrix(m, N, N)
distance <- abs(x-i) + abs(y-i)
rInd <- x[distance<=R]
cInd <- y[distance<=R]
ind <- N * (cInd-1) + rInd
ind <- ind[ind>0 & ind<=(N^2)]
ind
}