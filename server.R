#load Necessary Libraries
suppressWarnings(library(ANLP))
suppressWarnings(library(shiny))
suppressWarnings(library(rsconnect))

#set path
#setwd("C:/Users/YBetty/Desktop/Yilma_R")

#load the file 
ngramsList <- readRDS("ngramsList4.rds")
#C:/Users/YBetty/Desktop/Yilma_R/
shinyServer(function(input, output, session) {
  
  observe({
    
    text <- reactive({input$text})
    predictions <- predict_Backoff(text(), ngramsList)
    predictions2 <- predict_Backoff(text(), ngramsList)
    result1 <<- predictions[1]
    ifelse(predictions2 != predictions && predictions == F, predictions2, 1)
    result2 <<- predictions2[1]
    
    output$prediction1 <- renderUI({
      
      actionButton("button1", label = result1)
      
    })
    
    output$prediction2 <- renderUI({
      actionButton("button2", label = result2)
      
      
    })
    
  })
  
  
  observeEvent(input$button1, {
    
    if(input$button1 == 1){
      
      name <- paste(input$text, result1)
      
      updateTextInput(session, "text", value=name)
      
    }
    
    
  })
  
  observeEvent(input$button2, {
    
    if(input$button2 == 1){
      
      name <- paste(input$text, result2)
      
      updateTextInput(session, "text", value=name)
      
    }
    
    
  })
  
})