opposite_figure <- tr("opposite_figure")
midpoint <- tr("midpoint")
right_angle <- tr("right_angle")
iF <- tr("iF")
prove <- tr("prove")
A <- tr("A")
B <- tr("B")
C <- tr("C")
D <- tr("D")
BC_overLine <- tr("BC_overLine")
AC_2 <- tr("AC_2")
AD_2 <- tr("AD_2")
BD_2 <- tr("BD_2")
triangle_shape <- withMathJax("\\(\\bigtriangleup\\)")
paper <- tr("paper")

tagList(
  div(
    class = "row row-rtl",
    div(
      class = "col-xs-12",
      style = "font-size:20px;",
      p(iF, triangle_shape, A, B, C, right_angle, B, ",", D, midpoint, BC_overLine, ","),
      p(prove, AC_2, "-", AD_2, "=", con_num(3), BD_2)
    ),
    div(
        class = "col-xs-12", style = "padding:10px;margin-top: 100px;",
        span(tags$img(src = "deprecated/images/alert.png", style = "width:30px;height:30px"), style = "display:inline-block"),
        span(paper, style = "margin:0px 5px;color:#5079b7;font-size:20px")
      )
  )
)