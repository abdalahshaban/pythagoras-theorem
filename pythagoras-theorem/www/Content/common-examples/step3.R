opposite_figure <- tr("opposite_figure")
A <- tr("A")
B <- tr("B")
C <- tr("C")
D <- tr("D")
AC_2 <- tr("AC_2")
AB_2 <- tr("AB_2")
BC_2 <- tr("BC_2")
in_case <- withMathJax("\\(\\in\\)")
bot_case <- withMathJax("\\(\\bot\\)")
triangle_shape <- withMathJax("\\(\\bigtriangleup\\)")
half_frac_case <- tr("half_frac_case")
BD_frac_case <- tr("BD_frac_case")
therefore <- withMathJax("\\(\\therefore\\)")
because <- withMathJax("\\(\\because\\)")
right_angle_triangle <- tr("right_angle_triangle")
right_angle <- tr("right_angle")
AC_overLine <- tr("AC_overLine")
BD_overLine <- tr("BD_overLine")
find_len <- tr("find_len")
find_len_2 <- tr("find_len_2")
Given <- tr("Given")
R.T.F <- tr("R.T.F")
Proof <- tr("Proof")
Pythagoras <- tr("Pythagoras")
Area <- tr("Area")
the_req <- tr("the_req")
such <- tr("such")
cm <- tr("cm")
cm_2 <- tr("cm_2")
align <- tr_style("text-align")
and <- tr("and")
p_style <- "font-family: Poppins;font-style: normal;font-weight: normal;font-size: 20px;line-height: 30px;"


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
                p(A, B, C, D, right_angle_triangle, B, ",", D, in_case, AC_overLine),
                p(such, BD_overLine, bot_case, AC_overLine, ",", A, B, con_num(8), cm, ".", and, C, B, con_num(6), cm, "."),
                p(find_len, BD_overLine)
            ),
            div(
                class = "col-xs-6",
                plotOutput(outputId = "plot_common_three_image_one")
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
                                class = "col-xs-12 row-rtl proof-p",
                                div(
                                    class = "col-xs-1 ",
                                    p(Given, style = "color: #0049C5;")
                                ),
                                div(
                                    class = "col-xs-11",
                                    p(triangle_shape, A, B, C, right_angle_triangle, B, ",", BD_overLine, bot_case, AC_overLine),
                                    p(",", A, B, "=", con_num(8), cm, ".", and, C, B, "=", con_num(6), cm, ".")
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
                                   p(find_len, BD_overLine)
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
                                    p(because, triangle_shape, A, B, C, right_angle, B),
                                    p(therefore, AC_2, "=", AB_2, "+", BC_2, "  ", "(", Pythagoras, ")"),
                                    p(therefore, AC_2, "=", con_num(64), "+", con_num(36), "=", con_num(100)),
                                    p(therefore, A, C, "=", number_sqrt(100), con_num(10), cm),
                                    p(",", because, Area, triangle_shape, A, B, C, "=", half_frac_case, B, C, "x", A, B, "=", half_frac_case, "x", con_num(6), "x", con_num(8), "=", con_num(24), cm_2),


                                    p(",", because, Area, triangle_shape, A, B, C, "=", half_frac_case, A, C, "x", B, D),

                                    div(
                                      class = "col-xs-12 row-rtl",
                                      style = "padding: 0;",
                                      p(class = "col-xs-6", therefore, con_num(24), "=", half_frac_case, "x", con_num(10), "x", B, D),
                                      p(class = "col-xs-6", therefore, con_num(24), "=", con_num(5), B, D),
                                    ),

                                    div(
                                      class = "col-xs-12 row-rtl",
                                      style = "padding: 0;",
                                      p(class = "col-xs-6", therefore, B, D, "=", BD_frac_case, "=", con_num(4.8), cm, "."),
                                      p(class = "col-xs-6", "(", the_req, ")")
                                    )

                                )
                            )
                        )
                    )
                )
            )

        )
    )
)