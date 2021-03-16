
A <- tr("A")
B <- tr("B")
C <- tr("C")
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

AB <- quiz_variables$AB
BC <- quiz_variables$BC
AC <- quiz_variables$AC
# 

tagList(
  div(
    class = "row row-rtl",
    div(
      class = "col-xs-12",
      p(In, triangle_shape, C, A, B, ":", because, m, "(<", A, ")", "=", con_num(90), angle_shape),
      p(therefore, AB_2, "=", BC_2, "-", AC_2, "=", con_num((BC ^ 2)), "-", con_num((AC ^ 2)), "=", con_num((AB ^ 2))),
      p(therefore, A, B, "=", number_sqrt((AB ^ 2)), "=", con_num(AB), cm, ".")
    )
  )
)