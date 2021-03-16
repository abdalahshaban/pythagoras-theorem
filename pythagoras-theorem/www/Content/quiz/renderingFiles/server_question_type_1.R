#optional u don't need to creat this file and u can do what ever u need here it's ur logic for specific type of question

color <- "#0049C5"
cex <- 1
cm <- tr("cm")
A <- tr_latex("A")
B <- tr_latex("B")
C <- tr_latex("C")

quition_mark <- tr_latex("؟")
output[["plot_quiz_four_image_one"]] <- renderPlot({
  BC_num <- quiz_variables$BC
  AC_num <- quiz_variables$AC
  img <- readPNG("www/deprecated/images/quiz_four.png")
  par(bg = 'transparent')
  # par(bg = '#00FF00')
  par(mai = c(0, 0, 0, 0))
  plot(axes = F, ann = FALSE, xlim = c(0, 100), ylim = c(0, 100), x = NA)
  rasterImage(image = img, xleft = 0, ybottom = 0, xright = 100, ytop = 100)
  text(C, x = 93, y = 97, cex = cex, col = color, font = 7)
  text(A, x = 93, y = 7, cex = cex, col = color, font = 7)
  text(B, x = 10, y = 7, cex = cex, col = color, font = 7)
  text(paste(con_num(AC_num), cm), x = 95, y = 50, cex = cex, col = color, font = 7, srt = 90)
  text(paste(con_num(BC_num), cm), x = 48, y = 58, cex = cex, col = color, font = 7, srt = 40)
  text(quition_mark, x = 50, y = 8, cex = cex, col = color, font = 7)
}, height = 186, width = 260)

# height = 186, width = 260
