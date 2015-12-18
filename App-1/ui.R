library(shiny)

shinyUI(fluidPage(
    titlePanel("censusVis"),

    sidebarLayout(
        sidebarPanel(
            "Create demographic maps with information from the 2010 US Census",
            selectInput(
                "select",
                label = h3("Choose a variable to display"),
                choices = list("Percent White" = 1, "Percent Black" = 2,
                               "Percent Hispanic" = 3, "Percent Asian" = 4)
            ),
            sliderInput(
                "slider 1",
                label = h3("Range of interest"),
                min = 0, max = 100, value = c(0, 100)
            )
            
        ),
        mainPanel()
    )
))