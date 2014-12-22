#Set initial parameters
N <- 100
cellArray <- initGrid (N, setOutbreak='rand', nrOutbreaks=0)
time <- 100
neighborhood <- "Neumann"
r <- 1 #narazie nic nie robi
illMates <- 1 #narazie nic nie robi
alpha <- 0.5
beta <- 0.01
gamma <- 0.01
dane <- spreadDisease(cellArray, time, neighborhood, r, illMates, alpha, beta, gamma)