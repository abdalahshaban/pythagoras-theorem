#optional u don't need to creat this file and u can do what ever u need here it's ur logic for specific type of question

color <- "#0049C5"
cex <- 1
cm <- tr("cm")
A <- tr_latex("A")
B <- tr_latex("B")
C <- tr_latex("C")
D <- tr("D")
E <- tr("E")


quition_mark <- tr_latex("؟")
output[["plot_quiz_eight_image_one"]] <- renderPlot({
  AB_num <- quiz_variables$AB
  BC_num <- quiz_variables$BC
  img <- readPNG("www/deprecated/images/quiz_eight.png")
  par(bg = 'transparent')
  # par(bg = '#00FF00')
  par(mai = c(0, 0, 0, 0))
  plot(axes = F, ann = FALSE, xlim = c(0, 100), ylim = c(0, 100), x = NA)
  rasterImage(image = img, xleft = 0, ybottom = 0, xright = 100, ytop = 100)
  text(A, x = 95, y = 1, cex = cex, col = color, font = 7)
  text(B, x = 95, y = 55, cex = cex, col = color, font = 7)
  text(C, x = 50, y = 57, cex = cex, col = color, font = 7)
  text(D, x = 5, y = 45, cex = cex, col = color, font = 7)
  text(E, x = 5, y = 100, cex = cex, col = color, font = 7)
  text(paste(con_num(AB_num), cm), x = 100, y = 25, cex = cex, col = color, font = 7, srt = -90)
  text(paste(con_num(BC_num), cm), x = 75, y = 55, cex = cex, col = color, font = 7)
}, height = 225, width = 320)
