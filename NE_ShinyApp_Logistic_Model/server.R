library(shiny)

# Define server logic required to generate and plot a random distribution
shinyServer(function(input, output) {

#R <- .5
#K <- 10
    
   output$Plot <- renderPlot({
    x <- seq(input$obs)
    y <- (20*input$K)/(20+(input$K-20)*(exp(-(input$R)*x)))
    plot(y ~ x, main="Logistic Model")
  })
})
	