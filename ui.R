#Shiny apps for next word predictor

library(shiny)
library(shinythemes)

shinyUI(fluidPage(
  #theme = shinytheme("united"),
  theme = shinytheme("cosmo"),
  h4("Capstone project:-Predicting next Word"),
  fluidRow(HTML("</>Author:Yilma Adem </>") ),
  fluidRow(HTML("</>Date:November 17,2017 </>") ),
  br(),
  #input functions
  sidebarLayout( 
    sidebarPanel(
      helpText("Instructions"),
      helpText("1.Write a word or text in space."),
      br(),
      textInput(inputId = "text", label = 'Predicting Next word',  value = "")
      
    ),
    mainPanel(
      helpText("Notes on the Prediction App:"),
      helpText("1. Backoff Method  is used from ANLP package."),
      helpText("2. Fives Ngram models are used for prediction."),
      HTML('<script type="text/javascript"> 
           
           document.getElementById("text").focus();
           
           </script>'),
      h5("Possible words"),
      HTML("<div id='buttons'>"),
      uiOutput("prediction1",inline = T),
      uiOutput("prediction2",inline = T),
      #uiOutput("prediction3",inline = T),
      HTML("</div>"),align="Left")
    
    )
  
  )
)