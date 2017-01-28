corr <- function(directory, threshold = 0) {
  files_list <- list.files(directory, full.names=TRUE) #Reads a directory of files
  
  cor_vector <- vector(mode = "numeric", length = 0) #Creates an empty vector
  
  for(each in 1:332) {
    tempdata <- read.csv(files_list[each])
    tempdata_complete <- complete.cases(tempdata)
    counter <- sum(tempdata_complete)
    if(counter>threshold) {
      cor_vector <- cor(tempdata[["nitrate"]], tempdata[["sulfate"]], use = "complete.obs")
    }
  }
  
  return(cor_vector)
  
}
