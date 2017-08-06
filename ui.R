#Loading Shiny App
library(shiny)

shinyUI( fluidPage(
  tags$head(
    tags$link(rel = "stylesheet", type = "text/css", href = "bootstrap.css")
  ),
      # Application Title
  headerPanel("MAGICIAN SECRET NUMBER"),
  
  sidebarPanel(
    #numericInput('guess', 'Number', 1, min = 1, max = 1000, step = 1),
    #submitButton('Submit')
    textInput('guess', 'Number', value = ""),
    h5('Please press \'Go!\' only on your first attempt'),
    actionButton("goButton", "Go!")
  ), 
  mainPanel(
    h2('Guess a number between 1 and 1000'),
    h4('Guess the secret number in the magician hat (Selected by Computer). If your guess is too high or too low, you will get a hint.'),
    h4('You entered'),
    verbatimTextOutput("inputValue"),
    h4('And is...'),
    verbatimTextOutput("outputValue"),
    
    

    h5('The idea is based on the GUESS THE MAGICIANS SECRET NUMBER : http://www.funbrain.com/guess/')
    )
    )
)