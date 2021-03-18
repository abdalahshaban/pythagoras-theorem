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

  for (AB in 1:50) {
    for (BC in 1:50) {
      for (AC in 1:50) {
        if (BC ^ 2 - AC ^ 2 == AB ^ 2) {
          right_angle <- cbind(c(AB, BC, AC), right_angle)
        }
      }
    }
  }

  round_num_col <- sample(1:ncol(right_angle), 1)
  quiz_variables$AB <- right_angle[[1, round_num_col]]
  quiz_variables$BC <- right_angle[[2, round_num_col]]
  quiz_variables$AC <- right_angle[[3, round_num_col]]

  quiz_variables$solution <- sqrt((quiz_variables$BC ^ 2) - (quiz_variables$AC ^ 2))
  # answers list carry list for each input id and the expected value in this input and optional validation function name
  answers = list(list(id = "quiz_four_input", value = quiz_variables$solution, func = ""))
  # return all that values as list of opjects similar to json opject
  return(list(quiz_variables = quiz_variables, answers = answers, weight = weight, difficulty = difficulty))
}

questionType2 <- function() {
  # weight of this type of question
  weight <- 5
  difficulty <- "easy"
  # quiz_variables all the variables that u will need in the question and will be randomly generated
  quiz_variables <- list(
    XY = 0,
    YZ = 0,
    XL = 0
  )

  right_angle_1 <- matrix(nrow = 3, ncol = 0)
  right_angle_2 <- matrix(nrow = 3, ncol = 0)

  for (XY in 1:50) {
    for (YZ in 1:50) {
      for (XZ in 1:50) {
        if (XY ^ 2 + YZ ^ 2 == XZ ^ 2) {
          right_angle_1 <- cbind(c(XY, YZ, XZ), right_angle_1)
        }
      }
    }
  }


  round_num_col <- sample(1:ncol(right_angle_1), 1)
  quiz_variables$XY <- right_angle_1[[1, round_num_col]]
  quiz_variables$YZ <- right_angle_1[[2, round_num_col]]
  quiz_variables$XZ <- right_angle_1[[3, round_num_col]]
  # quiz_variables$XL <- sample(1:50, 1)


  for (XL in 1:50) {
    for (LZ in 1:50) {
      if (quiz_variables$XZ ^ 2 - XL ^ 2 == LZ ^ 2) {
        right_angle_2 <- cbind(c(XL, quiz_variables$XZ, LZ), right_angle_2)
      }
    }
  }


  round_num_col <- sample(1:ncol(right_angle_2), 1)
  quiz_variables$XL <- right_angle_2[[1, round_num_col]]
  # quiz_variables$XZ <- right_angle_2[[2, round_num_col]]
  quiz_variables$LZ <- right_angle_2[[3, round_num_col]]
  
  quiz_variables$solution <- sqrt((quiz_variables$BC ^ 2) - (quiz_variables$AC ^ 2))
  # answers list carry list for each input id and the expected value in this input and optional validation function name
  answers = list(
    list(id = "quiz_six_input_one", value = quiz_variables$XZ, func = ""),
    list(id = "quiz_six_input_two", value = quiz_variables$LZ, func = "")
    )
  # return all that values as list of opjects similar to json opject
  return(list(quiz_variables = quiz_variables, answers = answers, weight = weight, difficulty = difficulty))
}

questionType3 <- function() {
  # weight of this type of question
  weight <- 10
  difficulty <- "meduim"
  # quiz_variables all the variables that u will need in the question and will be randomly generated
  quiz_variables <- list(
    AB = 0,
    BC = 0
  )

  right_angle <- matrix(nrow = 3, ncol = 0)

  for (AB in 1:50) {
    for (BC in 1:50) {
      for (AC in 1:50) {
        if (AB ^ 2 + BC ^ 2 == AC ^ 2) {
          right_angle <- cbind(c(AB, BC, AC), right_angle)
        }
      }
    }
  }

  round_num_col <- sample(1:ncol(right_angle), 1)
  quiz_variables$AB <- right_angle[[1, round_num_col]]
  quiz_variables$BC <- right_angle[[2, round_num_col]]
  quiz_variables$AC <- right_angle[[3, round_num_col]]
  
  # answers list carry list for each input id and the expected value in this input and optional validation function name
  answers = list(list(id = "quiz_eight_input_one", value = quiz_variables$AC, func = ""))
  # return all that values as list of opjects similar to json opject
  return(list(quiz_variables = quiz_variables, answers = answers, weight = weight, difficulty = difficulty))
}

questionType4 <- function() {
  # weight of this type of question
  weight <- 10
  difficulty <- "meduim"
  # quiz_variables all the variables that u will need in the question and will be randomly generated
  quiz_variables <- list(
    AB = 0,
    BC = 0,
    AC = 0,
    BD = 0,
    AE = 0,
    AD = 0,
    ED = 0
  )

  right_angle <- matrix(nrow = 3, ncol = 0)

  for (AB in 1:20) {
    for (BC in 1:20) {
      for (AC in 1:20) {
        if (AB ^ 2 + BC ^ 2 == AC ^ 2) {
          right_angle <- cbind(c(AB, BC, AC), right_angle)
        }
      }
    }
  }

  round_num_col <- sample(1:ncol(right_angle), 1)
  quiz_variables$AB <- right_angle[[1, round_num_col]]
  quiz_variables$BC <- right_angle[[2, round_num_col]]
  quiz_variables$AC <- right_angle[[3, round_num_col]]

  quiz_variables$BD <- sample(2:(quiz_variables$AB - 1), 1)

  quiz_variables$AE <- (quiz_variables$BC * 2)
  quiz_variables$AD <- quiz_variables$AB - quiz_variables$BD
  quiz_variables$ED <- sqrt((quiz_variables$AE ^ 2) + (quiz_variables$AD ^ 2))

  # answers list carry list for each input id and the expected value in this input and optional validation function name
  answers = list(
    list(id = "quiz_ten_input_one", value = quiz_variables$AD, func = ""),
    list(id = "quiz_ten_input_two", value = round(quiz_variables$ED, 2), func = "")
    )
  # return all that values as list of opjects similar to json opject
  return(list(quiz_variables = quiz_variables, answers = answers, weight = weight, difficulty = difficulty))
}

