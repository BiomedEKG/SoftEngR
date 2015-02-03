library(shiny)

# Define UI for application that draws a histogram
shinyUI(fluidPage(
  
  # Application title
  titlePanel("Symulacja epidemii eboli"),
  
  # Sidebar with a slider input
  sidebarLayout(
    sidebarPanel("Parametry",
      sliderInput("populacja", "Wielkoœæ populacji:",
                  min = 25, max = 1600, value = 400),
      radioButtons("inicjalizacja", label = "Inicjalizacja siatki",
                   choices = list("przypadkowo" = 'rand', "centrum siatki" = 'center'),selected = 'center'),
      sliderInput("ogniska", "Iloœæ ognisk:",
                   min = 1, max = 30, value = 10),
      radioButtons("sasiedztwo", label = "S¹siedztwo",
                  choices = list("von Neumana" = 1, "Moora" = 2),selected = 1),
      sliderInput("postep", "Postêp epidemii w czasie:", min =  0, max = 100, value = 10, step= 10,
                  format="## cykli", animate=animationOptions(interval=5000, loop=F)),
      sliderInput("zarazliwosc", "Wspolczynnik zarazliwosci:",
                  min = 0, max = 1, value = 0.3, step= 0.01),
      sliderInput("smiertelnosc", "Wspolczynnik smiertelnosci:",
                  min = 0, max = 1, value = 0.1, step= 0.01),
      sliderInput("uzdrowienia", "Wspolczynnik uzdrownien:",
                  min = 0, max = 0.1, value = 0.05, step= 0.001),
      numericInput("promien", "Promien sasiedztwa:", min=1, max=4, value=1, step=1)
    ),
    
    # Show a plot of the generated distribution
    mainPanel(
      h3(textOutput("caption")),
      tabsetPanel(type = "tabs", 
                  tabPanel("Wykres", plotOutput("wykres")),  
                  tabPanel("Siatka", plotOutput("siatka"))
      )
    )
  )
))
