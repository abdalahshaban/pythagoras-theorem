opposite_figure <- tr("opposite_figure")
find_len_unknown <- tr("find_len_unknown")
Answer <- tr("Answer")

# add ur ui here in tagList
tagList(
  div(
    class = "row row-rtl",
    div(
      class = "col-xs-12",
      style = "font-size: 20px;",
      p(opposite_figure, find_len_unknown)
    ),
    div(
        class = "col-xs-12",
        plotOutput(outputId = "plot_quiz_four_image_one")
    ),
    div(
      class = "col-xs-12",
      span(Answer, style = "color:#ECB546;font-size: 20px;"),
      span(style = "display: inline-block;", numericInput(inputId = "quiz_one_input", label = "", value = "", width = 80,))
    )
  )
)