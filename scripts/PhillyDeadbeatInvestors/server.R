#
# This is the server logic of a Shiny web application. You can run the
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)
library(ggplot2)

tractData <- read.csv('consolidatedTractData.csv', row.names = 1)

shinyServer(function(input, output) {

  output$tractPlot <- renderPlot({

    p <- ggplot(tractData, aes_string(x=input$x, y=input$y)) + geom_point(size=3, alpha = 0.75)

    if (input$color != 'None')
      p <- p + aes_string(color=input$color)

    if (input$predict)
      p <- p + geom_smooth(method = "lm", se = FALSE)

    print(p)

  }, height=500)
})
