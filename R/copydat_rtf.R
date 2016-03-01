#' Copy data (RTF)
#' 
#' Copy data, formatted as an RTF table, to the clipboard.
#' 
#' @include Copy.R
#' 
#' @export
copydat_rtf <- function (dat = get_dat(), fmt = dat2rtf) {
  
  message("Copying data from `", attr(dat, "name"), "` to clipboard ... ", appendLF = FALSE)
  copydat::Copy(dat, fmt = fmt)
  message("OK")
  
}