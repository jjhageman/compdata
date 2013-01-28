agecount <- function(age = NULL) {
  homicides <- readLines("homicides.txt")
  regex <- paste0(" +",age," +years +old")
  length(grep(regex, homicides))
}