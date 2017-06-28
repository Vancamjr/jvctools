# Read Clipboard
# typically used to clean up data imported from the clipboard
# option to set selected columns as factors
#
#' rcb() read excel input from clipboard
#'
#' @param ... additional parameters if used
#' @param head defaults to TRUE
#'
#' @keywords excel, clipboard
#' @export

rcb <-function(head=TRUE,...){
    x <- read.table(pipe("pbpaste"), header=TRUE, sep="\t")
    return(x)
  #PC version read.table(file = "clipboard", sep = "\t", header=head) # windows version
}


# Read data into R copied from the Excel clipboard
# by default it assumes headers (column titles) are used.
# If no column titles then set head=FALSE.
# The function will return a data.frame with the excel data.
