

shinyServer(function(input, output, session) {
  translation <- fromJSON(file = "./www/Translations/lang.json")
  language <- reactiveValues(current = "english")
  learn_tab <- reactiveValues(current_step = 1, number_of_steps = 3)
  common_examples_tab <- reactiveValues(current_step = 1, number_of_steps = 3)
  Master::ServerInit(mjxMenuHTMLCSS = TRUE,
                     Authorization = TRUE,
                     env = environment(),
                     session = session)
  output$learn_content <- renderUI({
    eval(parse(text = includeText(paste0("./www/Content/learn/step", toString(learn_tab$current_step), ".R"))))
  })
  observe({
    eval(parse(text = includeText(paste0("./www/Content/learn/step", toString(learn_tab$current_step), "-server.R"))))
  })
  output$common_examples_content <- renderUI({
    eval(parse(text = includeText(paste0("./www/Content/common-examples/step", toString(common_examples_tab$current_step), ".R"))))
  })
  observe({
    eval(parse(text = includeText(paste0("./www/Content/common-examples/step", toString(common_examples_tab$current_step), "-server.R"))))
  })
})
