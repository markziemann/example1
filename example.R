# download the gene expression dataset from github
# note that I've downloaded the "raw" file 
download.file("https://raw.githubusercontent.com/markziemann/SLE712_files/master/bioinfo_asst3_part1_files/mydata.tsv",
              destfile = "mydata.tsv")

# Read file into R and specify that the 1st line is the header and 
# first row is the row names, making sure that strings are not recognised
# as factors
x <- read.table("mydata.tsv", header = TRUE, row.names=1 ,
    stringsAsFactors = FALSE)

# Have a look at the first 6 lines of a file.
head(x)

# confirm the structure and type of data in dataframe.
str(x)