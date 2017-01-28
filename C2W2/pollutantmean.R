pollutantmean <- function(directory, pollutant, id = 1:332) {

  files_list <- list.files(directory, full.names=TRUE) #Puts the list of files into a variable
  
  data <-data.frame() #Empty data frame that we will fill with values using a loop
  
  for (i in id) {
    
    data<-rbind(data, read.csv(files_list[i]))
  }

  
  mean(data[[pollutant]], na.rm=TRUE)
}
