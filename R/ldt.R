# Load data.table
# shortcut to load data.tables toolset
#
#' ldt() load my default libraries
#' @keywords default library
#' @export
#' @examples
#' ldt()


ldt <-function(){
  f = file()
  sink(file=f) ## silence upcoming output using anonymous file connection
  library(data.table)
  sink() ## undo silencing
  close(f)
}
