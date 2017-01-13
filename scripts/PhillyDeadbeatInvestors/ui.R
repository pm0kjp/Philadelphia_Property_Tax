#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)

tractData <- read.csv('consolidatedTractData.csv', row.names = 1)

# Define UI for application that draws a histogram
shinyUI(fluidPage(

  # Application title
  titlePanel("Philadelphia Census Tract Data: Plotting"),

  # Sidebar
  div(
    sidebarPanel(
      selectInput('x', 'X', names(tractData)),
      selectInput('y', 'Y', names(tractData), names(tractData)[[2]]),
      selectInput('color', 'Color', c('None', names(tractData))),

      checkboxInput("predict", "Add Linear Model")
    ),

    # Show a plot of the generated distribution
    mainPanel(
       plotOutput("tractPlot", height="inherit")
    )
  )
))
