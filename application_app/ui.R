library(shiny)
# install.packages("shinydashboardPlus")
library(shinydashboardPlus)
# install.packages("shinythemes")
library(shinythemes)
# install.packages("shinydashboard")
library(shinydashboard)
library(ggplot2)
library(plotly)
library(dplyr)
shinyUI(fluidPage(theme = shinytheme("journal"),
                  dashboardPage(
                    dashboardHeader(title = 'App coursera'),
                    # menu
                    dashboardSidebar(
                      sidebarMenu(
                        menuItem("regression models", tabName = "p1", icon=icon("brain")),
                        menuItem("About me", tabName = "p2", icon=icon("circle-info"))
                    )),
          dashboardBody(
            tabItems(
              tabItem(tabName = "p1",
                      fluidPage(
                        div(align="center",
                        h1("MODELS REGRESSIONS FOR IRIS DATA")
                        ),
                        h3("app information"),
                        h5("this is a basic application that studies the possible regressions that can be performed for each species of the data iris."),
                        h3("Description;"),
                        h5("This famous (Fisher's or Anderson's) iris data set gives the measurements \n
                           in centimeters of the variables sepal length and width and petal length and width,\n 
                           respectively, for 50 flowers from each of 3 species of iris. The species are\n
                           Iris setosa, versicolor, and virginica."),
                        selectInput(inputId = "alfa",
                                    label = "Choose what you wish to see",
                                    choices = c("all","setosa", "versicolor",
                                                "virginica"),
                                    width = 500),
                        actionButton("api",label = "continue and graphr",icon=icon("brain")),
                        div(align="center",
                        plotlyOutput("plotly",width = 700)
                        ),
                      )),
              # =====================================
              tabItem(tabName = "p2",
                      #Titulo
                      shiny::HTML("<br><br><center> 
                         <h1>About me</h1> 
                        </center>"),
                      tags$div( align = "center",
                                icon("users", class = "fa-4x")
                      ),
                      
                      fluidRow(
                        column(2),
                        column(8,
                               # Panel for Background on Data
                               div(class="panel panel-default",
                                   div(class="panel-body",  
                                       
                                       img(src='stat.jpg',height="40%", width="40%", align = "left"),
                                       tags$p(h6("I'm a statistics student passionate about machine learning passionate about
                                                  problem solving using statistical analysis,
                                                  implementing programming techniques and machine learning.
                                                  Likewise, we implement the development of their respective
                                                  interactive applications")),
                                   )
                               ) # Closes div panel
                        ), # Closes column
                        column(2)
                      ),
                      
                      # TEAM BIO
                      
                      fluidRow(
                        
                        style = "height:50px;"),
                      
                      fluidRow(
                        column(2),
                        # Sebas
                        column(2,
                               div(class="panel panel-default",
                                   div(class="panel-body",  width = "600px", 
                                       align = "center",
                                       div(
                                         tags$img(src = "team.jpg", 
                                                  width = "50px", height = "50px")
                                       ),
                                       div(
                                         tags$h5("Sebastián"),
                                         tags$h6( tags$i("statistical")),
                                         tags$h6( tags$i("data scientist"))
                                       )
                                   )
                               )
                        ),
                        column(2,h3("github repository"),
                               tags$a(icon("github-square", class = "fa-4x"),
                                      href="https://github.com/kaamayam/Tae-AccidentalidadMed")),
                        column(2, h3("Reproducible Pitch Presentation"),
                               tags$a(icon("file-invoice", class = "fa-4x"),
                                      href="https://rpubs.com/serebe/927418")),
                      ),
                      fluidRow(style = "height:150px;")
                
              )
              
            ),
          )
          

)))
