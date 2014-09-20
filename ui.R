
#UI file for shiny app predicting miles per gallon

library(shiny)

shinyUI(fluidPage(
  
  # Title of shiny app
  titlePanel("Prediction of vehicle MPG Using Motor Trend Dataset"),
  sidebarLayout(
    sidebarPanel(
      p("We create a regression model based on user's selection using the motor trend dataset"
      ),
      p("Modify below controls per your conditons"
      ),
      br(),
      sliderInput("cyl", "What is the number of engine cylinders you would like?",
                  min = 2, max = 8, value = 6),
      
      sliderInput("wt", "What is the weight of car you would like (in 1000's)?",
                  min = 1, max = 10, value = 4),
      br(),
      textOutput("predicted_mpg")
    ),
    mainPanel(
      plotOutput("graph_mpg")
    )
  )
))
