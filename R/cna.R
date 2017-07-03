# Check NAs
# function to show count of NAs in each column of a data frame
#
#' cna() check count of NAs in a data frame by columh
#'
#' @param x input object to be converted to a dataframe
#' @param factors Defaults to 0: (0 indicates no columns are converted to factors)
#'
#' @keywords dataframe
#' @export
#' @examples
#' cna(mytable)
#' x<-cna(mydataframe)


cna<- function(x){
  myoutput<-dplyr::summarise_each(x,funs(n=sum(is.na(.))))
  return(myoutput)
}
