library(shiny)

# Define UI for application that draws a histogram
shinyUI(fluidPage(
  
  # Application title
  titlePanel("Symulacja epidemii eboli"),
  
  # Sidebar with a slider input
  sidebarLayout(
    sidebarPanel("Parametry",
      sliderInput("populacja", "Wielkość populacji:",
                  min = 25, max = 100, value = 25),
      radioButtons("inicjalizacja", label = "Inicjalizacja siatki",
                   choices = list("przypadkowo" = 'rand', "centrum siatki" = 'center'),selected = 'center'),
      sliderInput("ogniska", "Ilość ognisk:",
                   min = 1, max = 25, value = 10),
      radioButtons("sasiedztwo", label = "Sąsiedztwo",
                  choices = list("von Neumana" = 1, "Moora" = 2),selected = 1),
      sliderInput("postep", "Postęp epidemii w czasie:", min =  0, max = 100, value = 10, step= 10,
                  format="## cykli", animate=animationOptions(interval=5000, loop=F)),
      sliderInput("zarazliwosc", "Współczynnik zaraźliwości:",
                  min = 0, max = 1, value = 0.01, step= 0.01),
      sliderInput("smiertelnosc", "Współczynnik śmiertelności:",
                  min = 0, max = 1, value = 0.03, step= 0.01),
      sliderInput("uzdrowienia", "Współczynnik uzdrownień:",
                  min = 0, max = 0.1, value = 0.02, step= 0.001),
      numericInput("promien", "Promień sąsiedztwa:", min=1, max=4, value=1, step=1)
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
