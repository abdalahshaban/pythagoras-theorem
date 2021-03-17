# same as rendering server but for ur show answer
#optional u don't need to creat this file and u can do what ever u need here it's ur logic for specific type of question#optional u don't need to creat this file and u can do what ever u need here it's ur logic for specific type of question

color <- "#0049C5"
cex <- 1
A <- tr_latex("A")
B <- tr_latex("B")
C <- tr_latex("C")
D <- tr("D")

output[["plot_Ch_one_image_one"]] <- renderPlot({
  img <- readPNG("www/deprecated/images/quiz_four.png")
  par(bg = '#edeff1')
  # par(bg = '#00FF00')
  par(mai = c(0, 0, 0, 0))
  plot(axes = F, ann = FALSE, xlim = c(0, 100), ylim = c(0, 100), x = NA, border = NA)
  rasterImage(image = img, xleft = 0, ybottom = 0, xright = 100, ytop = 100)
  text(A, x = 91, y = 95, cex = cex, col = color, font = 7)
  text(B, x = 91, y = 8, cex = cex, col = color, font = 7)
  text(C, x = 8, y = 8, cex = cex, col = color, font = 7)
  text(D, x = 50, y = 8, cex = cex, col = color, font = 7)

  text("-", x = 30, y = 13, cex = 4, col = "#E4C7C7", font = 7, srt = 70)
  text("-", x = 70, y = 13, cex = 4, col = "#E4C7C7", font = 7, srt = 70)
  segments(x0 = 50, y0 = 13, x1 = 91.5, y1 = 90, col = "#E4C7C7", lwd = 2)

}, height = 186, width = 260)
