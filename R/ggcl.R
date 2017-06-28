# Center Labels in ggplot2
# load my basic toolset
#
#' ggcl() add to ggplot call to center labels
#' @keywords default library
#' @export
#' @examples
#' ggcl()


ggcl<-function(){
  theme(plot.title=element_text(hjust=0.5),plot.subtitle=element_text(hjust=0.5))
}

