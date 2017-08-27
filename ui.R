# First we will upload the shiny library
library(shiny)

# shiny UI for shiny page
shinyUI(fluidPage(
  titlePanel("Predict Horsepower from Miles Per Gallon"),
  sidebarLayout(   # Page Layout
    sidebarPanel(
     sliderInput("sliderMPG", "What is the MPG of the car?", 10, 35, value = 20), # this is where we will input data on slider
      checkboxInput("showModel1", "Show/Hide Model 1", value = TRUE),
      checkboxInput("showModel2", "Show/Hide Model 2", value = TRUE),
     submitButton("Submit") # This is the submit button to avoide quick change!

   ),
  mainPanel(
# Now we will plot the output
    plotOutput("plot1"), h3("Prediction Horsepower from Model 1:"),
    textOutput("pred1"),
  h3("Prediction Horsepower from Model 2:"),
    textOutput("pred2")
    )
)
))
