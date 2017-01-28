complete <- function(directory, id = 1:332) {
  files_list <- list.files(directory, full.names=TRUE) #reads a directory full of files
  
  nobs <- numeric()
  
  for (each in id){    
    data <- read.csv(files_list[each])
    nobs <- c(nobs, sum(complete.cases(data)) )
    
  }
  
data.frame(id, nobs)


}