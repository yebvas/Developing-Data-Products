library(shiny)
library(dygraphs)
library(xts)

load("stocks.RData")

shinyUI(fluidPage(
        titlePanel("Historical Split Adjusted Daily Close Stock Prices"),
        
sidebarLayout(
        sidebarPanel(
                selectInput(inputId = "stock_1", label = "Select the first stock to graph", choices = stock_names)
        ),
        mainPanel(
                dygraphOutput("stock_graph"),
                textOutput("credit")
        )
)
))