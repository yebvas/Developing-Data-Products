library(shiny)
library(dygraphs)
library(xts)

load("stocks.RData")

shinyServer(function(input, output) {
        
        output$stock_graph <- renderDygraph({
                to_graph <- stocks2[,which(stock_names==input$stock_1)]
                to_graph <- to_graph[complete.cases(to_graph),]
                dygraph(to_graph, main  = "Historical Price", xlab = "Date", ylab = "Split Adjusted Price") %>% dyRangeSelector()
        })
        output$credit <- renderText({"Stock data from the Wiki EOD Stock Prices database on Quandl"})                
        
})