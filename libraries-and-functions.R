# Standard packages
pacman::p_load(data.table,magrittr,sqldf,expss,dplyr,gridExtra,grid,lubridate,gmodels,tidyverse,questionr,scales,chron,ggforce)

# function to convert decimal to percent
percent <- function(x, digits = 2, format = "f", ...) {
  paste0(formatC(100 * x, format = format, digits = digits, ...), "%")
}

# Simple function for word wrap in titles and axis labels
wrapper <- function(x, ...) 
{
  paste(strwrap(x, ...), collapse = "\n")
}

# quick csv export to tmp.csv.
wrt <- function(data){write_csv(data,file="tmp.csv")}
