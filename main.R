library('plotrix')
source("initGrid.R")
source("spreadDisease.R")
source("countCells.R")
source("neumann.R")
source("moore.R")

#Init 
N = 50 #rozmair siatki
time = 100
cellArray <- initGrid(N, 'center', 3)
neighborhood <- "Neumann"
r <- 1
alpha <- 0.8 
beta <- 0.5
gamma <- 0.01
# Create data frame for results
stats <- matrix(0,time,4)
stats <- as.data.frame(stats)
col.labels <- c("Healthy", "Ill", "Immune", "Dead")
colnames(stats) <- col.labels
#for visualization
x<- seq(1,N,1)
y<- seq(1,N,1)
testcol<-color.gradient(c(0,1),0,c(1,0),nslices=4)
#Main loop -> spread disease over time
for (t in 1:time){
  cat(paste("Kolejna chwila czasowa ", t, "\n"))#for debugging
  #Write to stats how many there are healthy cells etc.
  stats<- countCells(cellArray, stats, t)
  if (stats[t, "Dead"] == N^2){
    break
  }
  #spread disease over cell array
  cellArray <- spreadDisease(cellArray, neighborhood, r, alpha, beta, gamma)
  #update display
  image(x, y, cellArray, ylim = rev(range(y)), yaxs = "i", xaxs = "i")
  par(mar=c(7,4,4,6)) #margin
  color2D.matplot(cellArray,c(0,1),0,c(1,0), main="Rozwój choroby")
  color.legend(1.05*N,0.2*N,1.07*N,0.55*N,col.labels,testcol,align="rb",gradient="y")
}
#Wizualizacja
plot(seq(1,100,1), stats[,"Healthy"]) #itd


