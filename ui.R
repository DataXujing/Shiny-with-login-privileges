
library(shiny)
shinyUI(fluidPage(shinyjs::useShinyjs(),
                  uiOutput("page")))