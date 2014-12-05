library(shiny)

# Define UI for miles per gallon application
shinyUI(pageWithSidebar(
  
  # Application title
  headerPanel("Symulacja Eboli"),
  
  # Sidebar with controls to select the variable to plot against mpg
  # and to specify whether outliers should be included
  sidebarPanel(
    selectInput("location", "Rozpatrywany obszar",
                list("Afryka" = "afrika", 
                     "Europa" = "europe", 
                     "Ameryka Północna" = "northAmerica",
                     "Ameryka Południowa" = "southAmerica",
                     "Azja" = "asia")),
    selectInput("virus", "Typ wirusa",
                list("Ebola-Zaire" = "virZaire", 
                     "Ebola-Sudan" = "virSudan", 
                     "Ebola-Ivory Coast" = "virIvory",
                     "Ebola-Bundibugyo" = "virBundi",
                     "Ebola-Reston" = "virReston")),
    sliderInput("startPopulation", "Wielkość populacji", 
                min=0, max=1000000, value=50000),
    sliderInput("wskZar", "Wskaźnik zarażenia", 
                min=0, max=100, value=50),
    sliderInput("wskWyz", "Wskaźnik wyzdrowienia", 
                min=0, max=100, value=50),
    sliderInput("wskPonzar", "Wskaźnik ponownego zarażenia", 
                min=0, max=100, value=50),
    sliderInput("wskUmier", "Wskaźnik umieralności", 
                min=0, max=100, value=50),
    sliderInput("symulation", "Czas symulacji:", 1, 500, 1, step = 1, 
                animate=animationOptions(interval=10, loop=T))
  ),
  
  # Show the caption and plot of the requested variable against mpg
  mainPanel(
    h3(textOutput("caption")),
    tabsetPanel(type = "tabs", 
                tabPanel("Map of ebola outbrake", htmlOutput("view")),
                tabPanel("Plot", plotOutput("plot")),  
                tabPanel("Table", tableOutput("table"))
    )
  )
))