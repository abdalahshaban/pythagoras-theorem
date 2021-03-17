#optional u don't need to creat this file and u can do what ever u need here it's ur logic for specific type of question

color <- "#0049C5"
cex <- 1
cm <- tr("cm")
A <- tr_latex("A")
B <- tr_latex("B")
C <- tr_latex("C")
D <- tr("D")
E <- tr("E")

output[["plot_quiz_ten_image_one"]] <- renderPlot({
  BC_num <- quiz_variables$BC
  AC_num <- quiz_variables$AC
  BD_num <- quiz_variables$BD
  img <- readPNG("www/deprecated/images/quiz_ten.png")
  par(bg = 'transparent')
  # par(bg = '#00FF00')
  par(mai = c(0, 0, 0, 0))
  plot(axes = F, ann = FALSE, xlim = c(0, 100), ylim = c(0, 100), x = NA)
  rasterImage(image = img, xleft = 0, ybottom = 0, xright = 100, ytop = 100)
  text(A, x = 45, y = 97, cex = cex, col = color, font = 7)
  text(B, x = 45, y = 3, cex = cex, col = color, font = 7)
  text(C, x = 7, y = 3, cex = cex, col = color, font = 7)
  text(D, x = 40, y = 58, cex = cex, col = color, font = 7)
  text(E, x = 95, y = 97, cex = cex, col = color, font = 7)
  text(paste(con_num(BD_num), cm), x = 48, y = 40, cex = cex, col = color, font = 7, srt = -90)
  text(paste(con_num(BC_num), cm), x = 25, y = 4, cex = cex, col = color, font = 7)
  text(paste(con_num(AC_num), cm), x = 18, y = 45, cex = cex, col = color, font = 7, srt = 55)
}, height = 210, width = 320)
# height = 210, width = 320
