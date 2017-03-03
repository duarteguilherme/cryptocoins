#' Useful and general functions for the package 'cryptocoins'
#' @export

`%p%` <- function(e1,e2) {
  # This pipe unites two characters. It works similarly to '+' in python. Example: "United " %p% "States".
  return(paste0(e1,e2))
}
