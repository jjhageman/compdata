best <- function(state, outcome) {
  outcomes <- c("heart attack","heart failure","pneumonia")
  if(!any(outcomes == outcome)) stop("invalid outcome")
  o <- switch(outcome,
           "heart attack" = 11,
           "heart failure" = 17,
           "pneumonia" = 23)
  hospitals <- read.csv("ProgAssignment3-data/outcome-of-care-measures.csv",na.strings="Not Available")
  states <- unique(hospitals$State)
  if(!any(states == state)) stop("invalid state")
  state_hospitals <- subset(hospitals, State == state)
  min<-which.min(state_hospitals[,o])
  toString(state_hospitals[min,"Hospital.Name"])
}