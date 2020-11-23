#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)
shinyUI(fluidPage(
    titlePanel("Predict MPG from Horsepower"),
    sidebarLayout(
        sidebarPanel(
            sliderInput("sliderHP", "What is the Horsepower of the car?", 50, 350, value = 150),
            checkboxInput("showModel1", "Show/Hide Model 1", value = TRUE),
            checkboxInput("showModel2", "Show/Hide Model 2", value = TRUE),
        ),
        mainPanel(
            plotOutput("plot1"),
            h3("Predicted MPG from Model 1:"),
            textOutput("pred1"),
            h3("Predicted MPG from Model 2:"),
            textOutput("pred2")
        )
    )
))