
figures <- tr("figures")
find_side <- tr("Find")
therefore <- withMathJax("\\(\\therefore\\)")
because <- withMathJax("\\(\\because\\)")
p_style <- "font-family: Poppins;font-style: normal;font-weight: normal;font-size: 20px;line-height: 30px;"
align <- tr_style("text-align")
padding <- tr_style("padding")
triangle_shape <- withMathJax("\\(\\bigtriangleup\\)")

A <- tr("A")
B <- tr("B")
C <- tr("C")

right_angle <- tr("right_angle")
BC_2 <- tr("BC_2")
AB_2 <- tr("AB_2")
AC_2 <- tr("AC_2")

cm <- tr("cm")

tagList(
    withMathJax(),
    div(
        class = "row row-rtl",
        div(
            class = "col-xs-12",
            style = p_style,
            p(figures),
            p(find_side)
        ),

        div(
            class = "col-xs-11 row-rtl",
            style = "margin:auto",
            div(
                class = "col-xs-4",
                div(
                    class = "col-xs-12",
                    style = "height: 150px;",
                    plotOutput(outputId = "plot_common_one_image_one")
                ),
                div(
                    class = "col-xs-12",
                    div(
                        class = "info_msg",
                        style = "width: 343px;",
                        span(class = "fa fa-info-circle"),
                        div(
                        class = "msg_content",
                        style = align,
                            p(because, triangle_shape, A, B, C, right_angle, A),
                            p(therefore, BC_2, "=", AB_2, "+", AC_2, "=", number_mj(15), "+", number_mj(20)),
                            p("=", con_num(225), "+", con_num(400), "=", con_num(625), style = padding),
                            p(therefore, B, C, "=", number_sqrt(625), "=", con_num(25), cm)
                        )
                    )
                )
            ),
            div(
                class = "col-xs-4",
                div(
                    class = "col-xs-12",
                    style = "height: 150px;",
                    plotOutput(outputId = "plot_common_one_image_two")
                ),
                div(
                    class = "col-xs-12",
                    div(
                        class = "info_msg",
                        style = "width: 343px;",
                        span(class = "fa fa-info-circle"),
                        div(
                        class = "msg_content",
                        style = align,
                            p(because, triangle_shape, A, B, C, right_angle, B),
                            p(therefore, AB_2, "=", AC_2, "-", BC_2, "=", number_mj(15), "-", number_mj(9)),
                            p("=", con_num(225), "-", con_num(81), "=", con_num(144), style = padding),
                            p(therefore, A, B, "=", number_sqrt(144), "=", con_num(12), cm)
                        )
                    )
                )
            ),
            div(
                class = "col-xs-4",
                div(
                    class = "col-xs-12",
                    style = "height: 150px;",
                    plotOutput(outputId = "plot_common_one_image_three")
                ),
                div(
                    class = "col-xs-12",
                    div(
                        class = "info_msg",
                        style = "width: 343px;",
                        span(class = "fa fa-info-circle"),
                        div(
                        class = "msg_content",
                        style = align,
                            p(because, triangle_shape, A, B, C, right_angle, C),
                            p(therefore, AC_2, "=", AB_2, "-", BC_2, "=", number_mj(8.5), "-", number_mj(7.5)),
                            p("=", con_num(72.25), "-", con_num(56.25), "=", con_num(16), style = padding),
                            p(therefore, A, C, "=", number_sqrt(16), "=", con_num(4), cm)
                        )
                    )
                )
            )
        )
    )
)