
# For this project, you should perform exploratory data analysis on different file types like XML, 
# JSON, TEXT, .DAT (data will be provided by AcadGild) 
# Iris.xml ,iris.dat. 

# Part I 
# There are 20 files with .dat extention. You have to read all the files in to single dataframe.

setwd("C:/Users/Mahendra/Documents/R Studio/Assignment/iris_dat")
File <- list.files(getwd(), ".dat")
File
rr = lapply(File, read.delim)
print(rr)



# Part II  
# The data is present in xml format, with file name, iris.xml. Your task is to read the XML data and store it 
# in the data frame df.

setwd("C:/Users/Mahendra/Documents/R Studio/Assignment/")
library(XML)
df <- xmlToDataFrame("iris.xml", collectNames = TRUE, homogeneous = TRUE)
df
is.data.frame(df)


# Part III 
# Convert the iris data into the JSON format and read the data in JSON format and convert it into 
# dataframe “iris_data”


library(jsonlite)
setwd("C:/Users/Mahendra/Documents/R Studio/Assignment/iris_dat")
light <- list.files(getwd(), ".dat")
light
out <- lapply(light, read.delim)
out
dark <- toJSON(out)
prettify(dark)
iris_dat <- as.data.frame(dark, optional = FALSE)
print(iris_dat)
class(iris_dat)
is.data.frame(iris_dat)


# Part IV  
# Use dplyr function on the data iris_data. Implement select, match, filter, arrange, rename, and mutate 
# function on the iris_data.

select
match
filter
arrange
require
mutate


# Part V  
# Print the summary of iris_data 

gel <- read.delim("C:/Users/Mahendra/Documents/R Studio/Assignment/iris_dat/001.dat")
gel
summary(gel)























