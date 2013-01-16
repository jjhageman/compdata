corr <- function(directory, threshold = 0) {
  files <- list.files(directory,full.names=TRUE)
  ldf <- lapply(files, read.csv)
  cc <- lapply(ldf,complete.cases)
  sums <- lapply(cc, sum)
  tdf <- ldf[sums>threshold]
  correl<-function(data) cor(data$sulfate,data$nitrate,use="pairwise.complete.obs")
  if(length(tdf)>0) {
    sapply(tdf,correl)
  } else {
    numeric()
  }
}