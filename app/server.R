# server.R

library(shiny)
library(XML)
library(googleVis)
library(ggplot2)

url <- "http://en.wikipedia.org/wiki/Ebola_virus_epidemic_in_West_Africa"
dat <- readHTMLTable(readLines(url), which=2) 
dat$country <- dat[,1]
dat$cases <- dat[,2]
dat$cases <- as.numeric(gsub(',', '', dat$cases))


shinyServer(
  function(input, output){
    
    # Reactive expression to generate the requested distribution.
    # This is called whenever the inputs change. The output
    # functions defined below then all use the value computed from
    # this expression
    
    
    output$view <- renderGvis({
      gvisGeoChart(dat, "country", "cases",
                   options=list(backgroundColor="lightblue",
                                datalessRegionColor="white"))
    })
    
    output$plot <- renderPlot({
      qplot(dat$country,dat$cases,
            xlab = "Country", ylab = "Number of cases")
    })
    
    
    # Generate an HTML table view of the data
    output$table <- renderTable({
      data.frame(x=dat)
    })
    
  }
)

