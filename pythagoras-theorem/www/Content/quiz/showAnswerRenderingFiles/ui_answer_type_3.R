A <- tr("A")
B <- tr("B")
C <- tr("C")
D <- tr("D")
E <- tr("E")
AC_2 <- tr("AC_2")
AB_2 <- tr("AB_2")
BC_2 <- tr("BC_2")
cm <- tr("cm")
In <- tr("In")
m <- tr("M")
therefore <- withMathJax("\\(\\therefore\\)")
because <- withMathJax("\\(\\because\\)")
triangle_shape <- withMathJax("\\(\\bigtriangleup\\)")
angle_shape <- withMathJax("\\(^\\circ\\)")
AB_overLine <- tr("AB_overLine")
DE_overLine <- tr("DE_overLine")
BD_overLine <- tr("BD_overLine")
the_req <- tr("the_req")
transversal <- tr("transversal")
alternate_angles <- tr("alternate_angles")
V.O.A <- tr("V.O.A")
align <- tr_style("text-align")
# number_sqrt((AB ^ 2))
AB_num <- quiz_variables$AB
BC_num <- quiz_variables$BC
AC_num <- quiz_variables$AC

tagList(
  div(
    class = "row row-rtl",
    div(
      class = "col-xs-10",
      style = "margin:auto;font-size: 16px;",
      style = align,
      p(In, triangle_shape, A, B, C, ":", because, m, "(<", B, ")", con_num(90), angle_shape),
      p(therefore, AC_2, "=", AB_2, "+", BC_2, "=", con_num((AB_num ^ 2)), "+", con_num((BC_num ^ 2)), "=", con_num((AC_num ^ 2))),
      p(therefore, A, C, "=", number_sqrt((AC_num ^ 2)), "=", con_num(AC_num), cm),
      p(because, AB_overLine, "//", DE_overLine, ",", BD_overLine, transversal),
      div(
        class = "col-xs-12 row-rtl",
        style = "padding: 0;",
        p(class = "col-xs-8", style = "padding: 0;", therefore, m, "(<", D, ")", "=", m, "(<", B, ")"),
        p(class = "col-xs-4", "(", alternate_angles, ")")
      ),
      p(In, triangle_shape, triangle_shape, A, B, C, ",", E, B, C),
      p(m, "(<", D, ")", "=", m, "(<", B, ")"),
      div(
        class = "col-xs-12 row-rtl",
        style = "padding: 0;",
        p(class = "col-xs-8", style = "padding: 0;", m, "(<", A, C, B, ")", "=", m, "(<", E, C, D, ")"),
        p(class = "col-xs-4", "(", V.O.A, ")"),
      ),
      p(B, C, "=", D, C),
      p(therefore, triangle_shape, A, B, C, "=", triangle_shape, E, D, C),
      div(
        class = "col-xs-12 row-rtl",
        style = "padding: 0;",
        p(class = "col-xs-8", style = "padding: 0;", therefore, C, E, "=", C, A, "=", con_num(AC_num), cm, "."),
        p(class = "col-xs-4", "(", the_req, ")")
      )
    )
  )
)