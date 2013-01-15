getmonitor <- function(id, directory, summarize = FALSE) {
  file = paste0(directory,'/',sprintf("%03d",id),'.csv')
  data <- read.csv(file,header = TRUE)
  if(summarize) {
    dates <- data[1:6]['Date']
    other_dates = nrow(data)-6
    print(data)
  }else{
    data
  }
}