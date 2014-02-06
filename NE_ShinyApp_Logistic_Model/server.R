library(shiny)
library(ggplot2)

# Define server logic required to generate and plot a random distribution
shinyServer(function(input, output) {

#R <- .5
#K <- 10
    
   output$Plot <- renderPlot({
    #x <- seq(input$obs)
    logisticfxn <- function(xvar) {
    	(20*input$K)/(20+(input$K-20)*(exp(-(input$R)*xvar)))
    }
    p <- ggplot(data.frame(x=seq(input$obs)), aes(x=x)) + stat_function(fun=logisticfxn) + xlab("Time steps") + ylab("Transcriptional Output") + ggtitle("The Logistic Model")
	print(p)  
  })
})
	