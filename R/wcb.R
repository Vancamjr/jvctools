# Write Clipboard
# write data to the clipboard for excel import (paste)
#
#' wcb() read excel input from clipboard
#'
#' @param mydata
#'
#' @keywords excel, clipboard
#' @export
#' @examples
#' somedata<-matrix(c(1:20),ncol=4)
#' names(somedata)<-c('first','second','third','fourth')
#' wcb(somedata)
#' #column names included in the clipboard output

 wcb <- function (mydata) {
   osxcb <- pipe("pbcopy", "w")
   write.table(mydata, file = osxcb, row=FALSE)
   close(osxcb)
}


# Writing data from R to the clipboard ready to paste into excel
# by default assumes headers (column titles) are used
#
# The PC version is: write.table(tablename,"clipboard",sep="\t")
