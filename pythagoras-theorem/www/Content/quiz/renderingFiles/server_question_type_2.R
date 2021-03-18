#optional u don't need to creat this file and u can do what ever u need here it's ur logic for specific type of question

color <- "#0049C5"
cex <- 1
cm <- tr("cm")
X <- tr_latex("X")
Y <- tr_latex("Y")
Z <- tr_latex("Z")
L <- tr("L")

quition_mark <- tr_latex("؟")
output[["plot_quiz_six_image_one"]] <- renderPlot({
  XY_num <- quiz_variables$XY
  YZ_num <- quiz_variables$YZ
  XL_num <- quiz_variables$XL
  img <- readPNG("www/deprecated/images/quiz_six.png")
  par(bg = 'transparent')
  # par(bg = '#00FF00')
  par(mai = c(0, 0, 0, 0))
  plot(axes = F, ann = FALSE, xlim = c(0, 100), ylim = c(0, 100), x = NA)
  rasterImage(image = img, xleft = 0, ybottom = 0, xright = 100, ytop = 100)
  text(X, x = 90, y = 65, cex = cex, col = color, font = 7)
  text(Y, x = 90, y = 3, cex = cex, col = color, font = 7)
  text(Z, x = 5, y = 3, cex = cex, col = color, font = 7)
  text(L, x = 17, y = 95, cex = cex, col = color, font = 7)
  text(paste(con_num(XY_num), cm), x = 97, y = 35, cex = cex, col = color, font = 7, srt = -90)
  text(paste(con_num(YZ_num), cm), x = 48, y = 5, cex = cex, col = color, font = 7)
  text(paste(con_num(XL_num), cm), x = 55, y = 80, cex = cex, col = color, font = 7, srt = -15)
}, height = 160, width = 270)

# height = 160, width = 270
