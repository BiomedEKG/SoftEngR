#Set initial parameters
N <- 51
cellArray <- initGrid (N, setOutbreak='rand', nrOutbreaks=2)
time <- 30
neighborhood <- "Neumann"
r <- 1 
alpha <- 0.5
beta <- 0.01
gamma <- 0.01
dane <- spreadDisease(cellArray, time, neighborhood, r, alpha, beta, gamma)
