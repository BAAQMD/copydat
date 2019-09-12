#' @export
dat2html <- function (
  dat, 
  file = "", 
  digits = getOption("digits"),
  ..., 
  sep = "\n"
) {
  
  suppressPackageStartupMessages(require(markdown))
  stopifnot(is.data.frame(dat))
  
  md <- 
    dat2md(
      dat, 
      #file = NULL,
      digits = digits)
  
  # Open a tempfile (and promise to clean up)
  html_fn <- tempfile(fileext = ".html")
  on.exit(file.remove(html_fn))
  
  markdown::markdownToHTML(
    output = html_fn,
    text = md)
  
  # Dump it to the intended connection
  html_str <- paste(readLines(html_fn), collapse = sep)
  cat(html_str, file = file)
  
  return(invisible(html_str))
  
}