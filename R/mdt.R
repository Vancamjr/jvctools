# Make Data Table
# typically used prior to data.table functions df[x,y,z]
#
#' mdf() convert an object into a data frame
#'
#' @param x input object to be converted to a data table
#' @param none
#'
#' @keywords data.table
#' @export
#' @examples
#' x<-matrix(c(1:12),ncol=3)
#' names(x)<-c('A','B','C')
#' x<-mdt(x)

mdt<- function(x,factors=0){
  x<-data.table::as.data.table(x)
  return(x)
}
