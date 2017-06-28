# Make Data Frame
# typically used to clean up data imported from the clipboard
# option to set selected columns as factors
#
#' mdf() convert an object into a data frame
#'
#' @param x input object to be converted to a dataframe
#' @param factors Defaults to 0: (0 indicates no columns are converted to factors)
#'
#' @keywords dataframe
#' @export
#' @examples
#' x<-matrix(c(1:12),ncol=3)
#' x<-mdf(x)


mdf<- function(x,factors=0){
    x<-data.frame(x)
    if(factors!=0){
        for(i in factors){
            x[,i]<-as.factor(x[,i])
        }
    }
    return(x)
}
