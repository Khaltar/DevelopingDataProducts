library(shiny)
library(datasets)
require(ggplot2)
require(knitr)
require(markdown)

Theoph <- Theoph

ui <- fluidPage(    
  
  
  titlePanel("Pharmacokinetics of Theophylline in 12 different subjects"),
  
  
  sidebarLayout(      
    
    
    sidebarPanel(
      selectInput("subject", "Subject:", 
                  choices=c(1:12)),
      hr(),
      helpText("Choose the subject for which you want to plot the pharmacokinetics."),
      br(),
      
      img(src = "theo.png", height = 300, width = 250)
    ),
    
    
    mainPanel(
      tabsetPanel(
        tabPanel(includeMarkdown("documentation.md"))
      ),
      h3("Subject:"),
      verbatimTextOutput("subjectnumber"),
      h3("which corresponds to a dose of:"),
      verbatimTextOutput("dose"),
      h3("leads to the following pharmacokinetics plot:"),
      
      plotOutput("subjectPlot")  
    )
    
  )
)



server <- function(input, output){
  library(datasets)
  
  
  output$subjectPlot <- renderPlot({
    
    
    qplot(Time, 
          conc,
          ylab = "Concentration in mg/L", 
          xlab = "Time in hours since drug administration",
          geom = "line",
          data = subset(Theoph, Subject == input$subject))
    
  })
  
  output$subjectnumber <- renderPrint({input$subject})
  
  output$dose <- renderPrint({Theoph$Dose[Theoph$Subject == input$subject][1]})
}


shinyApp(server = server, ui = ui)