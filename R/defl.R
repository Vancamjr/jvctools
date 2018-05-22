# Default Libraries
# load my basic toolset
#
#' defl() load my default libraries
#' @keywords default library: data.table, magrittr,
#'    tydyverse(ggplot2,dplyr,tidyr,readr,purrr,tibble,stringr,forcats)
#' @export
#' @examples
#' defl()

defl <-function(){
    f = file()
    sink(file=f) ## silence upcoming output using anonymous file connection
    library(tidyverse)
    library(reshape2)
    library(data.table)
    library(magrittr)
    # library(sqldf)
    sink() ## undo silencing
    close(f)
}
