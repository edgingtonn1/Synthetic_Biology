library(shiny)
library(ggplot2)

# Define server logic required to generate and plot a random distribution
shinyServer(function(input, output) {

output$Plot1 <- renderPlot({
	hill.fxn <- function(xvar) {
    	(xvar)^input$n/(input$K + (xvar)^input$n)
    	}
    p <- ggplot(data.frame(x=seq(input$L)), aes(x=x)) + stat_function(fun=hill.fxn) + scale_x_log10() + xlab("ATc (ng/ml)") + ylab("LR State fraction") + ggtitle("The Hill equation (ATc=anhydrotetracycline)")
	print(p)  
	
#	output$Plot2 <- renderPlot({
#    log.hill <- function(xvar) {
#    	input$n*(log(xvar))+log(input$K)
#    	}
#    p <- ggplot(data.frame(x=log(seq(input$L))), aes(x=x)) + stat_function(fun=log.hill) + xlab("log(ATc (ng/ml))") + ylab("log('theta'/1-'theta')") + ggtitle("The Hill Plot")
#	print(p)  
  })
})