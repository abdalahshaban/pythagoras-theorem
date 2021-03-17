
A <- tr("A")
B <- tr("B")
C <- tr("C")
D <- tr("D")
AC_2 <- tr("AC_2")
AB_2 <- tr("AB_2")
BC_2 <- tr("BC_2")
BD_2 <- tr("BD_2")
BD2_2 <- tr("BD_2")
AD_2 <- tr("AD_2")
In <- tr("In")
triangle_shape <- withMathJax("\\(\\bigtriangleup\\)")
m <- tr("M")
therefore <- withMathJax("\\(\\therefore\\)")
because <- withMathJax("\\(\\because\\)")
triangle_shape <- withMathJax("\\(\\bigtriangleup\\)")
angle_shape <- withMathJax("\\(^\\circ\\)")
subtrac <- tr("subtrac")
Q.E.D <- tr("Q.E.D")
from <- tr("from")
align <- tr_style("text-align")

class_style_1 <- if (language$current == "english") "col-xs-9" else "col-xs-7"
  class_style_2 <- if (language$current == "english") "col-xs-3" else "col-xs-5"
  tagList(
    div(
      class = "row row-rtl",
      div(
        class = "col-xs-12 row-rtl",
        style = "margin:auto",
        div(
          class = "col-xs-6",
          style = align,
          style = "padding: 0;",
          p(In, triangle_shape, A, B, C, ":", because, m, "(<", B, ")", con_num(90), angle_shape),
          p(therefore, AC_2, "=", AB_2, "+", BC_2),
          div(
            class = "col-xs-12  row-rtl",
            style = "padding:0",
            p(class = "col-xs-1", style = "padding:0"),
            p(class = "col-xs-7", style = "padding-left: 35px;", "=", AB_2, "+", BD2_2),
          ),
          div(
            class = "col-xs-12  row-rtl",
            style = "padding:0",
            p(class = "col-xs-1", style = "padding:0"),
            p(class = "col-xs-8", style = "padding-left: 35px;", "=", AB_2, "+", con_num(4), BD_2),
            p(class = "col-xs-3", "(", con_num(1), ")"),
          ),
          p(",", In, triangle_shape, A, B, D, ":", because, m, "(<", B, ")", "=", con_num(90), angle_shape),
          div(
            class = "col-xs-12  row-rtl",
            style = "padding:0",
            p(class = "col-xs-9", style = "padding:0", therefore, AD_2, "=", AB_2, "+", BD_2),
            p(class = "col-xs-3", "(", con_num(2), ")"),
          ),
          p(subtrac, "(", con_num(2), ")", from, "(", con_num(1), ")", ":"),
          div(
            class = "col-xs-12  row-rtl",
            style = "padding:0",
            p(class = class_style_1, style = "padding:0;", therefore, AC_2, "-", AD_2, "=", con_num(3), BD_2),
            p(class = class_style_2, style = "padding:0;", "(", Q.E.D, ")"),
          ),
        ),
        div(
          class = "col-xs-6",
          style = "padding: 0;",
          plotOutput(outputId = "plot_Ch_one_image_one")
        )
      )
    )
)