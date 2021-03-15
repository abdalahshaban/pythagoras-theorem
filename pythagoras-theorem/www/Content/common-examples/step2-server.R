color <- "#0049C5"
cex <- 1
cm <- tr("cm")
A <- tr_latex("A")
B <- tr_latex("B")
C <- tr_latex("C")
D <- tr("D")
quition_mark <- tr_latex("?")
output[["plot_common_two_image_one"]] <- renderPlot({
  img <- readPNG("www/deprecated/images/common_two_image_one.png")
  par(bg = 'transparent')
  # par(bg = 'green')
  par(mai = c(0, 0, 0, 0))
  plot(axes = F, ann = FALSE, xlim = c(0, 110), ylim = c(0, 110), x = NA)
  rasterImage(image = img, xleft = 5, ybottom = 5, xright = 100, ytop = 100)
  text(A, x = 95, y = 80, cex = cex, col = color, font = 7)
  text(B, x = 95, y = 6, cex = cex, col = color, font = 7)
  text(C, x = 73, y = 6, cex = cex, col = color, font = 7)
  text(D, x = 6, y = 88, cex = cex, col = color, font = 7)
  text(paste(con_num(3), cm), x = 85, y = 8, cex = cex, col = color, font = 7)
  text(paste(con_num(4), cm), x = 99, y = 45, cex = cex, col = color, font = 7, srt = 90)
  text(paste(con_num(13), cm), x = 50, y = 85, cex = cex, col = color, font = 7)
}, height = 140, width = 250)

