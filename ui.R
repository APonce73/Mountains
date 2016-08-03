library(shiny)
#library(leaflet)
library(knitr)
library(plotly)
library(ggplot2)
library(ggplot2movies)


# Define UI for slider demo application
shinyUI(fluidPage(
  #Application title
  titlePanel("List of mountains by elevation"),
  
    sidebarPanel(
      
      #meters
      sliderInput(inputId = "Metres", label = "High of the Mountain:", min = 0, max = 8850, value = c(0,8850)),
      
      #Range
      selectInput(inputId = "Continent",
                  label = h6("Continent:"),
                  c("All", levels(Tabla1$Continent))),
      
      #Por Country
      selectInput(inputId = "Country",
                  label = h6("Country:"),
                  c("All", levels(Tabla1$Country))),
      
      
      
      checkboxGroupInput("Categorie", label = h6("Categorie (m):"),
                         choice = levels(Tabla1$Categorie), selected = levels(Tabla1$Categorie)),
      
      
      h6("Descargar los datos seleccionados para la visualizados en el mapa"),
      downloadButton('downloadData', 'Descargar (csv)'),
      #br(),
      br(),
      #br(),
      br(),
      h6("Source:"),
      tags$a(href = "https://en.wikipedia.org/wiki/List_of_mountains_by_elevation", "Wikipedia"),
      br(),
      h6("comments: aponce@conabio.gob.mx or aponce73pm@gmail.com"),
      #br(),
      h5("Github:"),
      tags$a(href = "https://github.com/APonce73/Mountains", "Mountain"),
      width = 2),
    # fluidRow(
    #  column(9,plotlyOutput("plot11"))
    #)
    mainPanel(
      plotlyOutput("plot11", width = 1100, height = 900)
    )
))

