dat2tsv <- function (dat, file = "", ..., row.names = FALSE, na = "", sep = "\t") {
  
  stopifnot(is.data.frame(dat))
  write.table(dat, file, ..., row.names = row.names, na = na, sep = sep)
  
  # TODO: return content invisibly, just like `dat2rtf`
  
}