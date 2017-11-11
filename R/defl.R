# Default Libraries
# load my basic toolset
#
#' defl() load my default libraries
#' @keywords default library: dplyr, ggplot2, reshape2, tidyr, data.table, magrittr, readr
#' @export
#' @examples
#' defl()


defl <-function(){
    f = file()
    sink(file=f) ## silence upcoming output using anonymous file connection
    library(dplyr)
    library(ggplot2)
    library(reshape2)
    library(tidyr)
    library(data.table)
    library(magrittr)
    library(readr)
    library(purrr)
    # library(sqldf)
    sink() ## undo silencing
    close(f)
}
