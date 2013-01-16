complete <- function(directory, id = 1:332) {
  nob <- function(i) {
    file <- paste0(directory,'/',sprintf("%03d",as.numeric(i)),'.csv')
    data <- read.csv(file,header = TRUE)
    sum(complete.cases(data))
  }
  nobs <- sapply(id,nob)
  data.frame(id=id,nobs=nobs)
}