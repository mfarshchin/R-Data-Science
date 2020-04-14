library(dslabs)
library(tidyverse)    # includes readr
library(readxl)

url <- "https://raw.githubusercontent.com/rafalab/dslabs/master/inst/extdata/murders.csv"
# The following command reads the file from internet and put the data into dat
dat <- read_csv(url)

# The following command downloads the file from internet and save it as murders.csv
download.file(url, "murders.csv")

# The following commands read the file from internet and put the data into dat
tempfile()
tmp_filename <- tempfile()
download.file(url, tmp_filename)
dat <- read_csv(tmp_filename)
file.remove(tmp_filename)