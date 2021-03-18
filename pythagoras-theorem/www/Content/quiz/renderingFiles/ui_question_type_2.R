opposite_figure <- tr("opposite_figure")
quadrilaterl <- tr("quadrilaterl")
find_len <- tr("find_len")
Answer <- tr("Answer")
X <- tr("X")
Y <- tr("Y")
Z <- tr("Z")
L <- tr("L")

angle_shape <- withMathJax("\\(^\\circ\\)")
m <- tr("M")
cm <- tr("cm")
and <- tr("and")

XZ_overLine <- tr("XZ_overLine")
LZ_overLine <- tr("LZ_overLine")

span_style <- if (language$current == "english") "margin-left: 80px;" else "margin-right: 67px;";

XY_num <- quiz_variables$XY
YZ_num <- quiz_variables$YZ
XL_num <- quiz_variables$XL
align <- tr_style("text-align")

tagList(
  div(
    class = "row row-rtl",
    div(
        class = "col-xs-10 row-rtl",
        style = "margin:auto",
        div(
          class = "col-xs-7",
          style = "font-size: 20px;",
          style = align,
          p(opposite_figure),
          p(X, Y, Z, L, quadrilaterl),
          p(m, "(<", X, Y, Z, ")", "=", m, "(<", X, L, Z, ")", "=", con_num(90), angle_shape, ","),
          p(X, Y, "=", con_num(XY_num), cm, ",", Y, Z, "=", con_num(YZ_num), cm, ".", and, X, L, "=", con_num(XL_num), cm, "."),
          p(find_len, XZ_overLine, and, LZ_overLine)
        ),
        div(
          class = "col-xs-5",
          plotOutput(outputId = "plot_quiz_six_image_one")
        ),
        div(
          class = "col-xs-12",
          span(Answer, style = "color:#ECB546;font-size: 20px;line-height: 0px;"),
          span(X, Z, "=", style = "line-height: 0px;"),
          span(style = "display: inline-block;line-height: 0px;", numericInput(inputId = "quiz_six_input_one", label = "", value = "", width = 80,)),
        ),
        div(
          class = "col-xs-12",
          style = "margin-top: -23px;",
          span(L, Z, "=", style = span_style, style = "line-height: 0px;"),
          span(style = "display: inline-block;line-height: 0px;", numericInput(inputId = "quiz_six_input_two", label = "", value = "", width = 80,))
        )
    )
  )
)