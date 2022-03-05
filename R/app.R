#' @import shiny
ARTofR_user_interface <- function() {
  ART_of_R_functions <- c("title1", "title2", "title3", "divider1", "divider2",'box','box1','list','list1')

  ui <- fluidPage(
    HTML("<br/> <strong> DESCRIPTION</strong>"),
    HTML("<br/> 1. Use this app to insert title, divider, or box of comments into your script"),
    HTML("<br/> 2. Start by choosing a decoration style"),
    HTML("<br/> 3. Copy your text and click 'Use clipboard'"),
    HTML("<br/> 4. OR, you can just type it and click 'OK'"),
    HTML("<br/> 5. See results in your console! All results are auto copied and ready to paste"),
    radioButtons("STYLE", "Select your decoration:", ART_of_R_functions,inline=TRUE),
    HTML("<br/>"),
    actionButton("clipboard", "Use clipboard"),
    HTML("<br/>"),
    textInput("userinput",""),
    actionButton("WORDS", "OK"),
    HTML("<br/> Tips: choose divider and click OK to get a simple line"),
    HTML("<br/> Tips2: for more information, check: <a href=\"https://github.com/Hzhang-ouce/ARTofR\">ARTofR guide</a>")

  )
  server <- function(input, output, session) {

    observe({
      if (input$clipboard) {
        rstudioapi::callFun("sendToConsole",paste0('ARTofR::xxx_',input$STYLE,'()'))
        stopApp()
      }
    })
    observe({
      if (input$WORDS) {
        rstudioapi::callFun("sendToConsole",paste0('ARTofR::xxx_',input$STYLE,'(\"',input$userinput,'\")'))
        stopApp()
      }
    })

  }

  viewer <- dialogViewer('ARTofR')
  runGadget(ui, server, viewer = viewer)
}


"2022-03-04 17:31:21"
