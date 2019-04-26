setwd("Z://Prog/R")

source("complete.R")

corr <- function(directory, threshold = 0 ){
  
  cur_dir <- paste("Z://Prog/R","/",directory,"/", sep = '')
  data_wo_na <- complete(cur_dir)
  #'specdata'
  filt_data = subset(data_wo_na, data_wo_na$nobs > threshold)
  
  file_list <- list.files(cur_dir)
  cor_vector <- vector()

  for(i in filt_data$id)  {
    
    file_name <- paste(cur_dir,file_list[i],sep="")
    data_tbl <- read.csv(file_name)
    
    data_tbl <- sunset(data_tbl, complate.cases(data_tbl))
    cor_vector <- c(cor_vector, cor(data_tbl$nitrate,data_tbl$sulfate))

  }
  

}

source("corr.R")
source("complete.R")
cr <- corr("specdata", 150)
head(cr)

summary(cr)

cr <- corr("specdata")                
cr <- sort(cr)                
set.seed(868)                
out <- round(cr[sample(length(cr), 5)], 4)
print(out)

cr <- corr("specdata", 129)                
cr <- sort(cr)                
n <- length(cr)                
set.seed(197)                
out <- c(n, round(cr[sample(n, 5)], 4))
print(out)

cr <- corr("specdata", 2000)                
n <- length(cr)                
cr <- corr("specdata", 1000)                
cr <- sort(cr)
print(c(n, round(cr, 4)))
