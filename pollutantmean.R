

pollutantmean <- function(directory, pollutant, id=1:332)
  {
  
  cur_dir <- paste("Z://Prog/R","/",directory,"/", sep = '')
  file_list <- list.files(cur_dir)
  
  mean_res <- NA

    for(i in id)
    {

      file_name <- paste(cur_dir,file_list[i],sep="")
      data_tbl <- read.csv(file_name)
      
      mean_res <- c( mean_res, data_tbl[,pollutant] )

    }
  
  mean(mean_res, na.rm = TRUE)

}

pollutantmean("specdata", "nitrate", 23)

pollutantmean("specdata", "nitrate", 70:72)

pollutantmean("specdata", "sulfate", 1:10)
pollutantmean("specdata", "sulfate", 34)

pollutantmean("specdata", "nitrate")
