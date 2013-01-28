count <- function(cause = NULL) {
  causes <- c("asphyxiation", "blunt force", "other", "shooting", "stabbing", "unknown")
  if(!any(causes == cause)) stop("invalid cause")
  first_letter <- substring(cause, 1,1)
  remainder <- substring(cause,2)
  cap <- toupper(first_letter)
  low <- tolower(first_letter)
  regex <- paste0("Cause: +[",cap,low,"]",remainder)
  homicides <- readLines("homicides.txt")
  length(grep(regex, homicides))
}