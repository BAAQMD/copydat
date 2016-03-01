#' Copy (a serialized version of) x to the clipboard
#' 
#' @param object a serializable R object
#' @param fmt a function that takes (at least) an argument \code{file}
#' @param ... further arguments to \code{writer}
#'
#' @include clipboard.R
#' @include dat2tsv.R
#' @include dat2rtf.R
#' 
#' @examples 
#' Copy(iris)
#' 
#' @export
Copy <- function (dat, fmt = dat2tsv, ...) {

  # Other things (like matrices) might be allowable
  stopifnot(is.data.frame(dat))
  
  # `writer` must be a function that takes (at least) an argument `file`
  stopifnot("file" %in% names(formals(fmt)))
  
  # Open a connection to the clipboard; write to it; then clean up
  clip_con <- clipboard()
  fmt(dat, file = clip_con, ...)
  close(clip_con)
  
}