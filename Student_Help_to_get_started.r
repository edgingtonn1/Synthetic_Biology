#Students: Set your working directory

#If you haven't already, install 'shiny' in R studio:
install.packages("shiny")

#If you haven't already, install 'ggplot2' in R studio:
install.packages("ggplot2")

#Load the shiny package:
library(shiny)

#Run a shiny app:
shiny::runGitHub("Synthetic_Biology","edgingtonn1", subdir="NE_ShinyApp_Logistic_Model/")

# To run other models, just change the "subdir" directory
