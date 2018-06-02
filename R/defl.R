# Default Libraries
# load my basic toolset
#
#' defl() load my default libraries
#' @keywords default library: data.table, magrittr,
#'    tydyverse(ggplot2,dplyr,tidyr,readr,purrr,tibble,stringr,forcats)
#' @export
#' @examples
#' defl()

defl<-function(){
    suppressMessages(library(tidyverse))
    suppressMessages(library(reshape2))
    suppressMessages(library(data.table))
    suppressMessages(library(magrittr))
    # library(sqldf)
}
