color <- "#0049C5"
cex <- 1
cm <- tr("cm")
A <- tr_latex("A")
B <- tr_latex("B")
C <- tr_latex("C")
quition_mark <- tr_latex("?")

output[["plot_common_one_image_one"]] <- renderPlot({
  img <- readPNG("www/deprecated/images/common_one_image_one.png")
  par(bg = 'transparent')
  # par(bg = 'green')
  par(mai = c(0, 0, 0, 0))
  plot(axes = F, ann = FALSE, xlim = c(0, 110), ylim = c(0, 110), x = NA)
  rasterImage(image = img, xleft = 5, ybottom = 5, xright = 100, ytop = 100)
  text(A, x = 90, y = 5, cex = cex, col = color, font = 7)
  text(B, x = 10, y = 5, cex = cex, col = color, font = 7)
  text(C, x = 90, y = 95, cex = cex, col = color, font = 7)
  text(quition_mark, x = 45, y = 60, cex = cex, col = color, font = 7, srt = 45)
  text(paste(con_num(15), cm), x = 50, y = 5, cex = cex, col = color, font = 7)
  text(paste(con_num(20), cm), x = 95, y = 50, cex = cex, col = color, font = 7, srt = 90)
}, height = 170, width = 108)

output[["plot_common_one_image_two"]] <- renderPlot({
  img <- readPNG("www/deprecated/images/common_one_image_two.png")
  par(bg = 'transparent')
  par(mai = c(0, 0, 0, 0))
  plot(axes = F, ann = FALSE, xlim = c(0, 110), ylim = c(0, 110), x = NA)
  rasterImage(image = img, xleft = 10, ybottom = 10, xright = 100, ytop = 100)
  text(A, x = 97, y = 13, cex = cex, col = color, font = 7)
  text(B, x = 20, y = 13, cex = cex, col = color, font = 7)
  text(C, x = 20, y = 99, cex = cex, col = color, font = 7)
  text(paste(con_num(15), cm), x = 68, y = 62, cex = cex, col = color, font = 7, srt = -40)
  text(quition_mark, x = 50, y = 13, cex = cex, col = color, font = 7)
  text(paste(con_num(9), cm), x = 10, y = 50, cex = cex, col = color, font = 7, srt = 90)
}, height = 120, width = 152)

output[["plot_common_one_image_three"]] <- renderPlot({

  img <- readPNG("www/deprecated/images/common_one_image_three.png")
  par(bg = 'transparent')
  par(mai = c(0, 0, 0, 0))
  plot(axes = F, ann = FALSE, xlim = c(0, 115), ylim = c(0, 115), x = NA)
  rasterImage(image = img, xleft = 10, ybottom = 15, xright = 100, ytop = 100)
  text(A, x = 98, y = 42, cex = cex, col = color, font = 7)
  text(B, x = 12, y = 42, cex = cex, col = color, font = 7)
  text(C, x = 73, y = 94, cex = cex, col = color, font = 7)
  text(paste(con_num(7.5), cm), x = 40, y = 79, cex = cex, col = color, font = 7, srt = 35)
  text(paste(con_num(8.5), cm), x = 55, y = 42, cex = cex, col = color, font = 7)
  text(quition_mark, x = 93, y = 75, cex = cex, col = color, font = 7)
}, height = 151, width = 153)

