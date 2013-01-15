getmonitor <- function(id, directory, summarize = FALSE) {
  file = paste0(directory,'/',sprintf("%03d",as.numeric(id)),'.csv')
  data <- read.csv(file,header = TRUE)
  if(summarize) {
    print(summary(data))
  }
  data
}