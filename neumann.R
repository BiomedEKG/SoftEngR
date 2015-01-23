neumann <- function(R){
  ind <- moore(R)
  sumOfIdicies <- rowSums(abs(ind))
  ind <- ind[sumOfIdicies <= R, c(1,2)]
  ind
}