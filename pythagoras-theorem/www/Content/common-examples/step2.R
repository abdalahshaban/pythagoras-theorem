
opposite_figure <- tr("opposite_figure")
A <- tr("A")
B <- tr("B")
C <- tr("C")
D <- tr("D")
m <- tr("M")
cm <- tr("cm")
and <- tr("and")
AC_overLine <- tr("AC_overLine")
CD_overLine <- tr("CD_overLine")
quadrilaterl <- tr("quadrilaterl")
find_len <- tr("find_len_2")
find_len_of <- tr("find_len")
align <- tr_style("text-align")

angle_shape <- withMathJax("\\(^\\circ\\)")
p_style <- "font-family: Poppins;font-style: normal;font-weight: normal;font-size: 20px;line-height: 30px;"

therefore <- withMathJax("\\(\\therefore\\)")
because <- withMathJax("\\(\\because\\)")
triangle_shape <- withMathJax("\\(\\bigtriangleup\\)")
BC_2 <- tr("BC_2")
AB_2 <- tr("AB_2")
AC_2 <- tr("AC_2")
CD_2 <- tr("CD_2")
AD_2 <- tr("AD_2")
Given <- tr("Given")
R.T.F <- tr("R.T.F")
Proof <- tr("Proof")
right_angle_triangle <- tr("right_angle_triangle")
Pythagoras <- tr("Pythagoras")
first_req <- tr("first_req")
second_req <- tr("second_req")
cm <- tr("cm")

tagList(
    div(
        class = "col-xs-12 row-rtl",
        div(
            class = "col-xs-10 row-rtl",
            style = "margin:auto",
            div(
                class = "col-xs-6",
                style = align,
                style = p_style,
                p(opposite_figure),
                p(A, B, C, D, quadrilaterl),
                p(m, "(<", B, ")", "=", m, "(<", A, C, D, ")", con_num(90), angle_shape),
                p(",", A, B, "=", con_num(4), cm, ",", B, C, "=", con_num(3), cm, ".", and, A, D, "=", con_num(13), cm, "."),
                p(find_len_of, AC_overLine, and, CD_overLine)
            ),
            div(
                class = "col-xs-6",
                plotOutput(outputId = "plot_common_two_image_one")
            ),

            div(
                class = "col-xs-12",
                div(
                    class = "col-xs-12",
                    div(
                        class = "info_msg",
                        style = "font-size: 16px;line-height: 24px;",
                        span(class = "fa fa-info-circle"),
                        div(
                        class = "msg_content",
                        style = align,
                            div(
                                class = "col-xs-12 row-rtl",
                                div(
                                    class = "col-xs-1",
                                    p(Given, style = "color: #0049C5;")
                                ),
                                div(
                                    class = "col-xs-11",
                                    p(m, "(<", B, ")", "=", m, "(<", A, C, D, ")", "=", con_num(90), angle_shape, ",", A, B, "=", con_num(4), cm, B, C, "=", con_num(3), cm, ".", and, A, D, "=", con_num(13), cm, ".")
                                )
                            ),
                            div(
                                class = "col-xs-12 row-rtl",
                                style = "font-size: 16px",
                                div(
                                    class = "col-xs-1",
                                    p(R.T.F, style = "color: #0049C5;",)
                                ),
                                div(
                                    class = "col-xs-11",
                                   p(find_len, AC_overLine, and, CD_overLine,)
                                )
                            ),
                            div(
                                class = "col-xs-12 row-rtl",
                                div(
                                    class = "col-xs-1 ",
                                    p(Proof, style = "color: #0049C5;")
                                ),
                                div(
                                    class = "col-xs-11 proof-p",
                                    p(because, triangle_shape, A, B, C, right_angle_triangle, B),
                                    p(therefore, AC_2, "=", AB_2, "+", BC_2, "  ", "(", Pythagoras, ")"),
                                    p(therefore, AC_2, "=", number_mj(4), "+", number_mj(3), "=", con_num(16), "+", con_num(9), "=", con_num(25)),
                                    if (language$current == "english") {
                                      tagList(
                                          p(class = "col-xs-9", span(therefore, A, C, "=", number_sqrt(25), "=", con_num(5), cm), "."),
                                          p(class = "col-xs-3", span("(", first_req, ")"))
                                      )
                                    } else {
  tagList(
                                        p(class = "col-xs-3", span("(", first_req, ")")),
                                        p(class = "col-xs-9", span(therefore, A, C, "=", number_sqrt(25), "=", con_num(5), cm), ".")
                                        )
},
                                    p(because, triangle_shape, A, C, D, right_angle_triangle, C),
                                    p(therefore, CD_2, "=", AD_2, "-", AC_2),
                                    p(therefore, CD_2, "=", number_mj(13), "-", number_mj(5), "=", con_num(169), con_num(25), "=", con_num(144), "  ", "(", Pythagoras, ")"),
                                   if (language$current == "english") {
                                    tagList(
                                        p(class = "col-xs-9", span(therefore, C, D, "=", number_sqrt(144), "=", con_num(12), cm), "."),
                                        p(class = "col-xs-3", span("(", second_req, ")"))
                                    )
                                   } else {
                                            tagList(
                                                 p(class = "col-xs-3", span("(", second_req, ")")),
                                                 p(class = "col-xs-9", span(therefore, C, D, "=", number_sqrt(144), "=", con_num(12), cm), ".")
                                            )
}
                                )
                            )
                        )
                    )
                )
            )

        )
    )
)