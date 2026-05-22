#' Split a string into parts
#'
#' @param x A single string to split
#' @param split The character to split on
#' @returns A character vector of parts
#' @export
#'
#' @examples
#' strsplit1("a,b,c", split = ",")
strsplit1 <- function(x, split) {
  strsplit(x, split = split)[[1]]
}
