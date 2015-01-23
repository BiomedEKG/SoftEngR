moore <- function(R){
  n <- seq(-R, R, 1)
 ind <- expand.grid(n, n)
 z <- ind==0
 ind2exclude <- z[,1] & z[,2]
 ind <- ind[c(1:nrow(ind))[-which(ind2exclude == TRUE)], c(1,2)]
 ind <- do.call(cbind, ind)
 ind
}