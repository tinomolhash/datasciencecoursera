complete <- function(directory, id=1:332){
  
  cur_dir <- paste("Z://Prog/R","/",directory,"/", sep = '')
  file_list <- list.files(cur_dir)
  v_id <- vector()
  v_mon <- vector()
  
  for(i in id)  {
    
    file_name <- paste(cur_dir,file_list[i],sep="")
    data_tbl <- read.csv(file_name)
    
    v_id <- c(v_id, i)
    v_mon <- c(v_mon, sum(complete.cases(data_tbl)))
  }

  data.frame(id= v_id, nobs = v_mon)
}


complete("specdata", 1)
complete("specdata", c(2, 4, 8, 10, 12))
complete("specdata", 30:25)
complete("specdata", 3)
