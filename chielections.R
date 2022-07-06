
# William Lee
# Chicago Elections Project

# see https://github.com/WilliamHLee104/ChiElections for more


# Set UP ------------------------------------------------------------------


xfun::pkg_attach2('tidyverse', 'RCurl', "RSelenium", 'rvest')


# Launch Driver -----------------------------------------------------------

rD <- rsDriver(browser="chrome", port=4551L, verbose=F, chromever = "101.0.4951.15")
remDr <- rD[["client"]]


# Download The Election Results -------------------------------------------

# The election number is 252 and the race number goes from 11 to 152

race_results <- function(election_number, outpath){
  
  results_base_path <- "https://chicagoelections.gov/en/election-results.asp?election=252"
  
  output <- read_html(results_base_path)
  
  return(output)
}

race_results()  


