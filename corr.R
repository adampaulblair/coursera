corr <- function(directory,threshold=0) {
  files <- list.files("specdata",full.names=TRUE)  
  result <- data.frame()
  for(i in id) {
    nobs <- sum(complete.cases(read.csv(files[i])))
    result <- rbind(result,data.frame(id=i,nobs=nobs))
  }
  cor()
}


## Sample output

cr <- corr("specdata", 400)
head(cr)
## [1] -0.01896 -0.04390 -0.06816 -0.07589  0.76313 -0.15783