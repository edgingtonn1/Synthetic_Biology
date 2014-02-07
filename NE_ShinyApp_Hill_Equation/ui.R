library(shiny)

# Define UI for application that plots random distributions 
shinyUI(pageWithSidebar(

  # Application title
  headerPanel("The Hill Equation; Cooperative Binding"),

  # Sidebar with a slider input for number of observations
  sidebarPanel(
	sliderInput("L", "[ATc] (Anhydrotetracycline concentration):", min = 0.0002, max = 200, value = 200),
      
	sliderInput("n", "n (hill coefficient):", min=-4, max=4, value=2, step=0.25),

	sliderInput("K", "Ka (association constant):", min = 0, max = 5, value = 1.5, step=0.5)
  ),

  mainPanel(plotOutput("Plot1"),plotOutput("Plot2"))
))