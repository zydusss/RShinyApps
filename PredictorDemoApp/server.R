library("shiny")
library("ggplot2")
library("scales")

shinyServer(function(input, output) {
  
  data(mtcars)
  fit0 <- lm( mpg ~ cyl+disp+hp, data=mtcars)
  
  
  mydata <- reactive({
    # Model Parameters:
    
    cyl <- input$cyl  # Cylinders
    disp  <- input$disp   # Displacement
    hp <- input$hp  # Horse Power
    fie <- list(cyl=cyl, disp=disp, hp=hp)
    mpgOutput <- predict.lm(fit0, newdata=fie)
  })
  
  output$r0 <- 
    renderText(paste('Predicted MPG:', predict.lm(fit0, newdata=list(cyl=input$cyl, disp=input$disp, hp=input$hp)) ))

})