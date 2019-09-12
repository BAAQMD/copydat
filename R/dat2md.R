#' @export
dat2md <- function (
  dat, 
  file = "",
  digits = getOption("digits"),
  ..., 
  sep = "\n"
) {
  
  suppressPackageStartupMessages(require(markdown))
  stopifnot(is.data.frame(dat))
  
  kabled <-
    knitr::kable(
      dat,
      digits = digits,
      ...)
  
  md <- paste0(kabled, collapse = "\n")
  
  # Dump it to the intended connection
  md <- paste(kabled, collapse = "\n")
  cat(md, file = file)
  
  return(invisible(md))
  
}