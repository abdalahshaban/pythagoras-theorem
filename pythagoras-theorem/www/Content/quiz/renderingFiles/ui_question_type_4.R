opposite_figure <- tr("opposite_figure")
triangle <- tr("triangle")
find_len_of <- tr("find_len_of")
where <- tr("where")
iF <- tr("IF")
Answer <- tr("Answer")
A <- tr("A")
B <- tr("B")
C <- tr("C")
D <- tr("D")
E <- tr("E")

AE_overLine <- tr("AE_overLine")
BC_overLine <- tr("BC_overLine")
AB_overLine <- tr("AB_overLine")
AD_overLine <- tr("AD_overLine")
ED_overLine <- tr("ED_overLine")
in_case <- withMathJax("\\(\\in\\)")

angle_shape <- withMathJax("\\(^\\circ\\)")
m <- tr("M")
cm <- tr("cm")
and <- tr("and")
span_style <- if (language$current == "english") "margin-left: 80px;" else "margin-right: 50px;";
align <- tr_style("text-align")

BC_num <- quiz_variables$BC
AC_num <- quiz_variables$AC
BD_num <- quiz_variables$BD

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
          p(A, B, C, triangle, ",", m, "(<", B, ")", con_num(90), angle_shape),
          p(",", AE_overLine, "//", BC_overLine, iF, B, C, "=", con_num(BC_num), cm, ",", A, C, "=", con_num(AC_num), cm),
          p(",", D, in_case, AB_overLine, where, B, D, "=", con_num(BD_num), cm, ".", and, A, E, "=", con_num(2), B, C),
          p(find_len_of, AD_overLine, and, ED_overLine)
        ),
        div(
          class = "col-xs-5",
          plotOutput(outputId = "plot_quiz_ten_image_one")
        ),
        div(
          class = "col-xs-12",
          span(Answer, style = "color:#ECB546;font-size: 20px;line-height: 0px;"),
          span(A, D, "=", style = "line-height: 0px;"),
          span(style = "display: inline-block;line-height: 0px;", numericInput(inputId = "quiz_ten_input_one", label = "", value = "", width = 80,)),
        ),
        div(
          class = "col-xs-12",
          style = "margin-top: -23px;",
          span(E, D, "=", style = span_style, style = "line-height: 0px;"),
          span(style = "display: inline-block;line-height: 0px;", numericInput(inputId = "quiz_ten_input_two", label = "", value = "", width = 80,))
        )
    )
  )
)