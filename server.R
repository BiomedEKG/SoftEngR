library('shiny')
library('plotrix')
source("initGrid.R")
source("spreadDisease.R")
source("countCells.R")
source("neumann.R")
source("moore.R")

#uewnijcie sie, ze macie wszystkie biblioteki ;)

shinyServer(function(input, output) {
  
  output$siatka <- renderPlot({
    
      populacja = input$populacja
      postep = input$postep
      alpha = input$zarazliwosc
      beta = input$smiertelnosc
      gamma = input$uzdrowienia
      neighborhood = input$sasiedztwo
      N = round(sqrt(populacja), digits = 0) #rozmiar siatki / populacji
      r = input$promien
      inicj = input$inicjalizacja
      ogniska <- input$ogniska
      #Init 
      cellArray <- initGrid(N, inicj , ogniska)
      time = 10
      
      # Create data frame for results
      stats <- matrix(0,time,4)
      stats <- as.data.frame(stats)
      col.labels <- c("Healthy", "Infected", "Immune", "Dead")
      colnames(stats) <- col.labels
      
      #for visualization
      x<- seq(1,N,1)
      y<- seq(1,N,1)
      testcol<-color.gradient(c(0,1),0,c(1,0),nslices=4)
    
      
      for (t in 1:postep){
      #cat(paste("Kolejna chwila czasowa ", t, "\n"))#for debugging
      #Write to stats how many there are healthy cells etc.

      #spread disease over cell array
      cellArray <- spreadDisease(cellArray, neighborhood, r, alpha, beta, gamma)
      #update display
      image(x, y, cellArray, ylim = rev(range(y)), yaxs = "i", xaxs = "i")
      par(mar=c(7,4,4,6)) #margin
      color2D.matplot(cellArray,c(0,1),0,c(1,0), main="Rozwój choroby")
      color.legend(1.05*N,0.2*N,1.07*N,0.55*N,col.labels,testcol,align="rb",gradient="y")
      }
    
  })
  
  output$wykres <- renderPlot({
    
    populacja = input$populacja
    time = input$postep
    czas <-  c(1:time)
    alpha = input$zarazliwosc
    beta = input$smiertelnosc
    gamma = input$uzdrowienia
    neighborhood = input$sasiedztwo
    N = round(sqrt(populacja), digits = 0) #rozmiar siatki / populacji
    r = input$promien
    inicj = input$inicjalizacja
    ogniska <- input$ogniska
    
    cellArray <- initGrid(N, inicj , ogniska)
    
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
      stats<- countCells(cellArray, stats, t)
      if (stats[t, "Dead"] == N^2){
        break
      }
      #spread disease over cell array
      cellArray <- spreadDisease(cellArray, neighborhood, r, alpha, beta, gamma)
    }
    plot.new()
    plot.window(xlim=c(0,time), ylim = c(0,populacja))
    axis(1)
    axis(2)
    title(main="Numbers over the days")
    title(xlab="Days")
    title(ylab="Number of people")
    box()
    lines(czas, stats[,"Immune"], col="pink")
    lines(czas, stats[,"Healthy"], col="blue")
    lines(czas, stats[,"Ill"], col="purple")
    lines(czas, stats[,"Dead"], col="red")
    legend("topright",col=c("blue", "purple", "pink", "red"), lwd=2,
           legend=c("Healthy", "Ill", "Immune", "Dead"), cex=0.85, xjust=1, seg.len=0.5)
    
  })
  
})
