#' Copy data (TSV)
#' 
#' Copy data, serialized in TSV (tab-separated) format, to the clipboard.
#' 
#' @include Copy.R
#' 
#' @export
copydat_tsv <- function (dat = get_dat(), fmt = dat2tsv) {
  
  message("Copying data from `", attr(dat, "name"), "` to clipboard ... ", appendLF = FALSE)
  copydat::Copy(dat, fmt = fmt)
  message("OK")
  
}