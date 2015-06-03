library(shiny)

# Define UI for application that plots random distributions 
shinyUI(pageWithSidebar(

  # Application title
  headerPanel("Working with logistic models"),

  # Sidebar with a slider input for number of observations
  sidebarPanel(
	sliderInput("obs", "Time steps:", min = 10, max = 50, value = 25),
      
	sliderInput("R", "R (growth rate):", min=-3, max=3, value=0.5, step=0.05),

	sliderInput("K", "K (carrying capacity):", min = 10, max = 500, value = 100, step=1)
  ),

  mainPanel(plotOutput("Plot"))
))