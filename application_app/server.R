library(shiny)
## llamamos la aplicacion
source("outputs.R")
# Define server logic required to draw a histogram
shinyServer(function(input, output) {
  dataInput3 <- eventReactive(input$api,{   
    if (input$alfa=="all") {
      source("outputs.R")
      regresion
    }
    else if (input$alfa=="setosa") {
      source("outputs.R")
      regresion1
    }
    else if (input$alfa=="virginica") {
      source("outputs.R")
      regresion2
    }
    else if (input$alfa=="versicolor") {
      source("outputs.R")
      regresion3
    }
  })
    output$plotly<-renderPlotly({
      dataInput3()
    })
})
