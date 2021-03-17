opposite_figure <- tr("opposite_figure")
cal_len <- tr("cal_len")
midpoint <- tr("midpoint")
Answer <- tr("Answer")
A <- tr("A")
B <- tr("B")
C <- tr("C")
D <- tr("D")
E <- tr("E")

angle_shape <- withMathJax("\\(^\\circ\\)")
cap_shape <- withMathJax("\\(\\cap\\)")
m <- tr("M")
cm <- tr("cm")
and <- tr("and")

BD_overLine <- tr("BD_overLine")
AE_overLine <- tr("AE_overLine")
AB_overLine <- tr("AB_overLine")
DE_overLine <- tr("DE_overLine")
CE_overLine <- tr("CE_overLine")

AB_num <- quiz_variables$AB
BC_num <- quiz_variables$BC

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
          p(BD_overLine, cap_shape, AE_overLine, "{", C, "}", AB_overLine, "//", DE_overLine),
          p(",", A, B, "=", con_num(AB_num), cm, ",", B, C, "=", con_num(BC_num), cm, "."),
          p(and, C, midpoint, BD_overLine),
          p(cal_len, CE_overLine)
        ),
        div(
          class = "col-xs-5",
          plotOutput(outputId = "plot_quiz_eight_image_one")
        ),
        div(
          class = "col-xs-12",
          span(Answer, style = "color:#ECB546;font-size: 20px;line-height: 0px;"),
          span(C, E, "=", style = "line-height: 0px;"),
          span(style = "display: inline-block;line-height: 0px;", numericInput(inputId = "quiz_eight_input_one", label = "", value = "", width = 80,)),
        )
    )
  )
)