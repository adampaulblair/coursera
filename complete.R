complete <- function(directory,id=1:332) {
  files <- list.files("specdata",full.names=TRUE)
  result <- data.frame()
  for(i in id) {
    
    nobs <- sum(complete.cases(read.csv(files[i])))
    result <- rbind(result,data.frame(id=i,nobs=nobs))
    
  }
  return(result)
}