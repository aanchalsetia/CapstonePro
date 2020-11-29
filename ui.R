### Coursera Data Science Capstone : Final Project
### It builds required UI for Next Word Predictor application which accepts an n-gram and predicts the next word.

library(shiny)
library(markdown)
shinyUI(navbarPage("Coursera Data Science Capstone: Final Project",
                   tabPanel("Next Word Predictor",
                            HTML("<strong>Author: Aanchal Setia</strong>"),
                            br(),
                            HTML("<strong>Date: 30 November 2020</strong>"),
                            br(),
                            img(src = "headers.png"),
                            # Sidebar
                            sidebarLayout(
                                sidebarPanel(
                                    helpText("This application takes your string and predict the next word to your string"),
                                    textInput("inputString", "Enter your word or partial phrase here",value = ""),
                                    helpText("Once you finished typing your word or phrase, please click on the below button NextWord to suggest next expected word for your word or phrase"),
                                    submitButton('NextWord'),
                                    br(),
                                    br(),
                                    br(),
                                    br()
                                ),
                                mainPanel(
                                    h2("The suggested next word for your word or phrase is"),
                                    verbatimTextOutput("prediction"),
                                    strong("You entered the following word or phrase as Input to the application:"),
                                    tags$style(type='text/css', '#text1 {background-color: rgba(255,255,0,0.40); color: blue;}'), 
                                    textOutput('text1')
                                )
                            )
                            
                   ),
                   tabPanel("Overview",
                            mainPanel(
                                img(src = "./headers.png"),
                                includeMarkdown("Overview.md"),
                                img(src = "./app.PNG")
                            )
                   ),
                   tabPanel("Instructions",
                            mainPanel(
                                img(src = "./headers.png"),
                                includeMarkdown("Instructions.md")
                            )
                   )
)
)