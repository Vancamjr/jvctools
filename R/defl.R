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
    library(reshape2)
    library(ggplot2)
    library(purrr)
    library(dplyr)
    library(tidyr)
    library(stringr)
    library(readr)
    library(data.table)
    library(magrittr)
}
