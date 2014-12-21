initGrid <- function (N, setOutbreak='rand', nrOutbreaks=1)
{
  if (N == 0){
    stop ("Invalid 'N' parameter. 'N' can not be zero.")
  }
  cellArray = matrix(0,N*N,1);
  
  if (setOutbreak=='rand'){
    if (nrOutbreaks >= N^2)
      stop ("Invalid 'nrOutbreaks' parameter. 'nrOutbreaks' must be less than 'N'.") 
    NestStartPosition <- 1;
    IllCells = sample(x=N*N, size=nrOutbreaks, replace=FALSE)
    for (i in 1:nrOutbreaks)
    {
      cellArray[IllCells[i]]<- 1;
    }
    dim(cellArray) <- c(N,N);
    t(cellArray);
    
  }else if (setOutbreak=='center'){
    #nrOutbreaks is treated as circle's radius value input
    NestCenter <- N/2;
    NestCenter <- ceiling(NestCenter)
    NestRadius <- nrOutbreaks;
    if (nrOutbreaks > (NestCenter-1)){
      warning("Circle exceedes greed's dimension.")
    }
    dim(cellArray) <- c(N,N);
    t(cellArray);
    for (icol in 1:N)
    {
      for (irow in 1:N)
      {
        if ((sqrt((icol-NestCenter)^2 + (irow-NestCenter)^2)) <= NestRadius){
          cellArray[irow,icol] <- 1;
        }
      }
    }
  }
  
  else{
    stop("Invalid 'setOutbreak' parameter. Entered value is not handled in this function.")
  }
  
  cellArray
}
