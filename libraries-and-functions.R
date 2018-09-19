# Standard packages
pacman::p_load(
              chron,
              data.table,
              devtools,
              dplyr,
              expss,
              freqweights,
              grid,
              gridExtra,
              ggforce,
              gmodels,
              knitr,
              lubridate,
              magrittr,
              questionr,
              RCurl,
              RODBC,
              scales,
              sqldf,
              tidyverse  
)

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
wrt <- function(data){write_csv(data,"tmp.csv")}
