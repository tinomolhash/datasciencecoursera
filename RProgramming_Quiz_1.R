#load quiz data
my_date <- read.csv("Z:/Prog/R/hw1_data.csv")

#In the dataset provided for this Quiz, what are the column names of the dataset?
colnames(my_date)

#Extract the first 2 rows of the data frame and print them to the 
# console. What does the output look like?
my_date[1:2,]

#How many observations (i.e. rows) are in this data frame?
nrow(my_date)

#Extract the last 2 rows of the data frame and print them 
# to the console. What does the output look like?
my_date[152:153,]

tail(my_date,2)

#What is the value of Ozone in the 47th row?
my_date$Ozone[47]

#How many missing values are in the Ozone column of this data frame?
sum(is.na(my_data$Ozone))

       
#What is the mean of the Ozone column in this dataset? Exclude 
# missing values (coded as NA) from this calculation.
mean(my_data$Ozone, na.rm = TRUE)

#Extract the subset of rows of the data frame where Ozone values are above 31 and Temp 
# values are above 90. What is the mean of Solar.R in this subset?
my_data1 <- my_data[my_data$Ozone > 31, , drop = FALSE]
my_data1 <- my_data1[my_data1$Temp > 90, , drop = FALSE]
mean(my_data1$Solar.R, na.rm = TRUE)     

#What is the mean of "Temp" when "Month" is equal to 6?
my_data1 <- my_data[my_data$Month ==6, , drop = F]
mean(my_data1$Temp, na.rm = TRUE)

#What was the maximum ozone value in the month of May (i.e. Month = 5)?
my_data1 <- my_data[my_data$Month ==5, , drop = F]
max(na.omit(my_data1$Ozone))
