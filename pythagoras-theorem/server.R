

shinyServer(function(input, output, session) {
  translation <- fromJSON(file = "./www/Translations/lang.json")
  language <- reactiveValues(current = "english")
  learn_tab <- reactiveValues(current_step = 1, number_of_steps = 3)
  common_examples_tab <- reactiveValues(current_step = 2, number_of_steps = 3)
  Master::ServerInit(mjxMenuHTMLCSS = TRUE,
                     Authorization = TRUE,
                     env = environment(),
                     session = session)



  tr <- function(word) {
    translation[[language$current]][[word]]
  }
  tr_style <- function(word) {
    translation[[language$current]][["LanguageOptions"]][["style"]][[word]]
  }

  tr_latex <- function(word) {
    latex2exp::TeX(Translations::plotTex(paste("\\s{", word, "}"), language$current))
  }
  con_num <- function(number) {
    Translations::translateNumber(number, language$current)
  }
  number_mj <- function(number) {
    mj(paste("(", number, ")^{2}"), language$current)
  }


  number_sqrt <- function(number) {
    mj(paste("\\sqrt{", number, "}"), language$current)
  }

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
