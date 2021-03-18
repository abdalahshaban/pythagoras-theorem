
library(shiny)
library(shinyjs)
library(shinyWidgets)
library(shinycssloaders)
library(rjson)
library(AppInitialization)
library(LocalStorage)
library(Translations)
library(QuizPack)
library(EndSessionHandeller)
library(png)

shinyUI(fluidPage(
    useShinyjs(),
    useSweetAlert(),
    Master::UIInit(),
    tags$link(rel = "stylesheet", type = "text/css", href = "deprecated/CSS/customStyle.css"),
    uiOutput("LessonPage"))
)
