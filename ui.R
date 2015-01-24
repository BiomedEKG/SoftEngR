library(shiny)

# Define UI for application that draws a histogram
shinyUI(fluidPage(
  
  # Application title
  titlePanel("Symulacja epidemii eboli"),
  
  # Sidebar with a slider input
  sidebarLayout(
    sidebarPanel("Parametry",
      sliderInput("populacja", "Wielkosc populacji:",
                  min = 0, max = 1000, value = 400),
      radioButtons("inicjalizacja", label = "Inicjalizacja siatki",
                   choices = list("przypadkowo" = 'rand', "centrum siatki" = 'center'),selected = 'center'),
      sliderInput("ogniska", "Ilosc ognisk:",
                   min = 0, max = 500, value = 50),
      radioButtons("sasiedztwo", label = "Sasiedztwo",
                  choices = list("von Neumana" = 'Neumann', "Moora" = 'Moore'),selected = 'Moore'),
      sliderInput("postep", "Postep epidemii w czasie:", min =  0, max = 100, value = 10, step= 10,
                  format="## cykli", animate=animationOptions(interval=5000, loop=F)),
      sliderInput("zarazliwosc", "Wspolczynnik zarazliwosci:",
                  min = 0, max = 1, value = 0.01, step= 0.01),
      sliderInput("smiertelnosc", "Wspolczynnik smiertelnosci:",
                  min = 0, max = 1, value = 0.03, step= 0.01),
      sliderInput("uzdrowienia", "Wspolczynnik uzdrownien:",
                  min = 0, max = 0.1, value = 0.02, step= 0.001),
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
