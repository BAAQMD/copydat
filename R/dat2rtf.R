dat2rtf <- function (dat, file = "", width = 8.5, height = 11.0, omi = rep(1.0, 4), ..., sep = "\n") {
  
  suppressPackageStartupMessages(require(rtf))
  stopifnot(is.data.frame(dat))
  
  # Open a tempfile (and promise to clean up)
  rtf_fn <- tempfile(fileext = ".doc")
  on.exit(file.remove(rtf_fn))
  
  # Thanks to the lovely `rtf` package!
  rtf_obj <- rtf::RTF(file = rtf_fn, width = width, height = height, omi = omi, ...)
  rtf::addTable(rtf_obj, dat)
  rtf::done(rtf_obj)
  
  # Dump it to the intended connection
  rtf_str <- paste(readLines(rtf_fn), collapse = sep)
  cat(rtf_str, file = file)
  
  # Return it invisibly, as a courtesy
  # TODO: `dat2tsv` should return invisible content too
  return(invisible(rtf_str))

}