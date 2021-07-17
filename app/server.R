# makecondition -----------

library(ggplot2)
library(readr)
library(plotly)
library(shiny)
library(DT)
library(dplyr)
library(leaflet)

NTP_map <- readRDS("support/ntp_map.Rds")
mapdata <- readRDS("support/mapdata.Rds")




# server --------

server <- function(input, output){
output$ntp <- reactive({
    plotly::renderPlotly({
        plotly::plot_ly() %>% plotly::add_sf(data = mapdata, 
            name = ~name, showlegend = FALSE, stroke = I("#720017"), 
            color = I("#D8D583"))
    })
})
}
