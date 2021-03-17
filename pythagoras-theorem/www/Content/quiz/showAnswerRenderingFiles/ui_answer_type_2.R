cm <- tr("cm")
In <- tr("In")
m <- tr("M")
therefore <- withMathJax("\\(\\therefore\\)")
because <- withMathJax("\\(\\because\\)")
triangle_shape <- withMathJax("\\(\\bigtriangleup\\)")
angle_shape <- withMathJax("\\(^\\circ\\)")
first_req <- tr("first_req")
second_req <- tr("second_req")
X <- tr("X")
Y <- tr("Y")
Z <- tr("Z")
L <- tr("L")
XZ_2 <- tr("XZ_2")
XY_2 <- tr("XY_2")
YZ_2 <- tr("YZ_2")
LZ_2 <- tr("LZ_2")
XL_2 <- tr("XL_2")
align <- tr_style("text-align")

XY_num <- quiz_variables$XY
YZ_num <- quiz_variables$YZ
XL_num <- quiz_variables$XL
LZ_num <- quiz_variables$LZ
XZ_num <- quiz_variables$XZ

tagList(
  div(
    class = "row row-rtl",
    div(
      class = "col-xs-7 row-rtl",
      style = "margin:auto;",
      style = align,
      p(In, triangle_shape, X, Y, Z, ":", because, m, "(<", Y, ")", "=", con_num(90), angle_shape),
      p(therefore, XZ_2, "=", XY_2, "+", YZ_2, "=", con_num((XY_num ^ 2)), "+", con_num((YZ_num ^ 2)), "=", con_num((XZ_num ^ 2))),
      p(class = "col-xs-6", style = "padding: 0;", therefore, X, Z, "=", number_sqrt((XZ_num ^ 2)), "=", con_num(XZ_num), cm),
      p(class = "col-xs-6", "(", first_req, ")"),
      p(",", In, triangle_shape, X, L, Z, ":", because, m, "(<", L, ")", "=", con_num(90), angle_shape),
      p(therefore, LZ_2, "=", XZ_2, "-", XL_2, "=", con_num((XZ_num ^ 2)), "-", con_num((XL_num ^ 2)), "=", con_num((LZ_num ^ 2))),
      p(class = "col-xs-6", style = "padding: 0;", therefore, L, Z, "=", number_sqrt((LZ_num ^ 2)), "=", con_num(LZ_num), cm),
      p(class = "col-xs-6", "(", second_req, ")"),
    )
  )
)