# Standard packages
pacman::p_load(
              chron,
              data.table,
              devtools,
              dplyr,
              expss,
              freqweights,
              ggforce,
              gmodels,
              grid,
              gridExtra,
              knitr,
              lubridate,
              magrittr,
              questionr,
              R.utils,
              RCurl,
              RODBC,
              RSiteCatalyst,
              scales,
              sqldf,
              tidyverse,
              xlsx
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

# Convert SAS dates to R
as_date_sas <- function(data){as.Date(data, origin = "1960-01-01")}
