color <- "#0049C5"
cex <- 1
cm <- tr("cm")
A <- tr_latex("A")
B <- tr_latex("B")
C <- tr_latex("C")
D <- tr("D")
output[["plot_common_three_image_one"]] <- renderPlot({
  img <- readPNG("www/deprecated/images/common_three_image_one.png")
  par(bg = 'transparent')
  # par(bg = 'green')
  par(mai = c(0, 0, 0, 0))
  plot(axes = F, ann = FALSE, xlim = c(0, 110), ylim = c(0, 110), x = NA)
  rasterImage(image = img, xleft = 5, ybottom = 5, xright = 100, ytop = 100)
  text(A, x = 88, y = 96, cex = cex, col = color, font = 7)
  text(B, x = 88, y = 12, cex = cex, col = color, font = 7)
  text(C, x = 13, y = 12, cex = cex, col = color, font = 7)
  text(D, x = 40, y = 53, cex = cex, col = color, font = 7)
  text(paste(con_num(8), cm), x = 93, y = 50, cex = cex, col = color, font = 7, srt = 90)
  text(paste(con_num(6), cm), x = 50, y = 12, cex = cex, col = color, font = 7)
}, height = 186, width = 156)

# height = 186, width = 156
