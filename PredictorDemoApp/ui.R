
library(shiny)

# Define UI for slider demo application
shinyUI(pageWithSidebar(
  
  #  Application title
  headerPanel("Classifier Demo App : Predicting Miles Per Gallon (Mtcars Dataset)"),
  
  # Sidebar with sliders that demonstrate various available options
  sidebarPanel(
    
    tags$h3("Significant Features"),
    
    sliderInput("cyl", "Cylinders:", 
                min=2, max=10, value=4, step=1),
    
    sliderInput("disp", "Displacement:", 
                min=50, max=500, value=100, step=1),
    
    sliderInput("hp", "Horse Power:", 
                min=50, max=360, value=120, step=1),
    
    br()
    
  ),
  
  textOutput("r0") 
  )
)