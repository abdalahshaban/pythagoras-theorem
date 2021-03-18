A <- tr("A")
B <- tr("B")
C <- tr("C")
D <- tr("D")
E <- tr("E")
AC_2 <- tr("AC_2")
AB_2 <- tr("AB_2")
BC_2 <- tr("BC_2")

ED_2 <- tr("ED_2")
EA_2 <- tr("EA_2")
AD_2 <- tr("AD_2")


cm <- tr("cm")
In <- tr("In")
m <- tr("M")
therefore <- withMathJax("\\(\\therefore\\)")
because <- withMathJax("\\(\\because\\)")
triangle_shape <- withMathJax("\\(\\bigtriangleup\\)")
angle_shape <- withMathJax("\\(^\\circ\\)")
align <- tr_style("text-align")
# number_sqrt((AB ^ 2))
transversal <- tr("transversal")
alternate_angles <- tr("alternate_angles")
first_req <- tr("first_req")
second_req <- tr("second_req")
BC_overLine <- tr("BC_overLine")
EA_overLine <- tr("EA_overLine")
AB_overLine <- tr("AB_overLine")

AB_num <- quiz_variables$AB
BC_num <- quiz_variables$BC
AC_num <- quiz_variables$AC

BD_num <- quiz_variables$BD

AE_num <- quiz_variables$AE
AD_num <- quiz_variables$AD

ED_num <- quiz_variables$ED

tagList(
  div(
    class = "row row-rtl",
    div(
      class = "col-xs-10",
      style = "margin:auto;font-size: 16px;",
      style = align,
      p(In, triangle_shape, A, B, C, ":", because, m, "(<", B, ")", "=", con_num(90), angle_shape),
      p(therefore, AB_2, "=", AC_2, "-", BC_2, "=", con_num((AC_num ^ 2)), "-", con_num((BC_num ^ 2)), "=", con_num((AB_num ^ 2))),
      p(therefore, A, B, "=", number_sqrt((AB_num ^ 2)), "=", con_num(AB_num), cm),
      div(
        class = "col-xs-12 row-rtl",
        style = "padding:0",
        p(class = "col-xs-3", style = "padding:0", ",", because, B, D, "=", con_num(BD_num), cm),
        p(class = "col-xs-5", therefore, A, D, "=", con_num(AB_num), "-", con_num(BD_num), "=", con_num(AD_num), cm),
        p(class = "col-xs-4", "(", first_req, ")")
      ),
      p(",", because, A, E, "=", con_num(2), B, C, "=", con_num(2), "x", con_num(BC_num), "=", con_num(AE_num), cm, "."),
      p(",", because, EA_overLine, "//", BC_overLine, ",", AB_overLine, transversal),
      div(
        class = "col-xs-12 row-rtl",
        style = "padding:0",
        p(class = "col-xs-8", style = "padding:0", therefore, m, "(<", E, A, B, ")", "=", m, "(<", B, ")", "=", con_num(90), angle_shape),
        p(class = "col-xs-4", "(", alternate_angles, ")")
      ),
      p(therefore, In, triangle_shape, E, A, D, ":", because, m, "(<", E, A, D, ")", "=", con_num(90), angle_shape),
      p(therefore, ED_2, "=", EA_2, "+", AD_2, "=", con_num((AE_num ^ 2)), "+", con_num((AD_num ^ 2)), "=", con_num((round(ED_num ^ 2, 2)))),
      div(
        class = "col-xs-12 row-rtl",
        style = "padding:0",
        p(class = "col-xs-8", style = "padding:0", therefore, E, D, "=", number_sqrt((ED_num ^ 2)), "=", con_num(round(ED_num, 2)), cm, "."),
        p(class = "col-xs-4", "(", second_req, ")")
      )

    )
  )
)