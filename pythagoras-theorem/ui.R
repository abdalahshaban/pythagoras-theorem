
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

shinyUI(fluidPage(
    useShinyjs(),
    useSweetAlert(),
    Master::UIInit(),
    uiOutput("LessonPage"))
)
