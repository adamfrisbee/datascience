corr <- function(directory, threshold = 0) {
  files_list <- list.files(directory, full.names=TRUE) #reads a directory of files
  
  cor_vector <- vector(mode = "numeric", length = 0)
  
  for(each in 1:332) {
    tempdata <- read.csv(files_list[each])
    tempdata_complete <- tempdata[complete.cases(tempdata),]
    counter <- nrow(tempdata_complete)
      if(counter>threshold) {
        cor_vector[each] <- cor(tempdata_complete[["nitrate"]], tempdata_complete[["sulfate"]])
      }
  }
  
  return(cor_vector)
  
}