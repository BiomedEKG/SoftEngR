#Set initial parameters
N <- 51
cellArray <- initGrid (N, setOutbreak='center', nrOutbreaks=5)
time <- 30
neighborhood <- "Moore"
r <- 1 
alpha <- 0.5
beta <- 0.01
gamma <- 0.01
dane <- spreadDisease(cellArray, time, neighborhood, r, alpha, beta, gamma)
