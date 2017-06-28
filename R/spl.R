# Set Plot Layout
# spl() => par(mfrow()) wrapper to simplify multiple plots
# row,col inputs default to 1,1
#
#' spl() set plot layout
#'
#' @param ... additional parameters if used
#'
#' @keywords plot, layout, par
#' @export

spl <-function(r=1,c=1){
  par(mfrow=c(r,c))
}


# spl is a shortcut for setting the multiplot layout
# by default it assumes a single row, column
