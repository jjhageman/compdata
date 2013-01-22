rankall <- function(outcome, num = "best") {
  ranks <- c("best","worst")
  if(!is.numeric(num)){
    if(!any(ranks == num)) stop("invalid rank")
  }
  outcomes <- c("heart attack","heart failure","pneumonia")
  if(!any(outcomes == outcome)) stop("invalid outcome")
  o <- switch(outcome,
              "heart attack" = 11,
              "heart failure" = 17,
              "pneumonia" = 23)
  hospitals <- read.csv("ProgAssignment3-data/outcome-of-care-measures.csv",na.strings="Not Available")
  
  
}