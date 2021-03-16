# change X for type number
questionType1 <- function() {
  # weight of this type of question
  weight <- 5
  difficulty <- "easy"
  # quiz_variables all the variables that u will need in the question and will be randomly generated
  quiz_variables <- list(
    BC = 0,
    AC = 0
  )

  right_angle <- matrix(nrow = 3, ncol = 0)

  for (AB in 1:20) {
    for (BC in 1:20) {
      for (AC in 1:20) {
        if (BC ^ 2 - AC ^ 2 == AB ^ 2) {
          right_angle <- cbind(c(AB, BC, AC), right_angle)
        }
      }
    }
  }
  
  round_num_col <- round(runif(1, 1, 4), 0)
  quiz_variables$AB <- right_angle[[1, round_num_col]]
  quiz_variables$BC <- right_angle[[2, round_num_col]]
  quiz_variables$AC <- right_angle[[3, round_num_col]]

  quiz_variables$solution <- sqrt((quiz_variables$BC ^ 2) - (quiz_variables$AC ^ 2))
  # answers list carry list for each input id and the expected value in this input and optional validation function name
  answers = list(list(id = "quiz_one_input", value = quiz_variables$solution, func = ""))
  # return all that values as list of opjects similar to json opject
  return(list(quiz_variables = quiz_variables, answers = answers, weight = weight, difficulty = difficulty))
}
