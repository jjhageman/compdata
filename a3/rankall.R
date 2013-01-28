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
  states <- sort(unique(hospitals$State))
  best<-function(state){
    state_hospitals <- subset(hospitals, State == state)
    sorted <- state_hospitals$Hospital.Name[order(state_hospitals[,o], state_hospitals$Hospital.Name, na.last=NA)]
    name <- if(num == "best"){
      sorted[1]
    }else if(num == "worst") {
      tail(sorted,1)
    }else {
      sorted[num]
    }
    toString(name)
  }
  names<-sapply(states,best)
  data.frame(hospital=names,state=states,row.names=states)
}