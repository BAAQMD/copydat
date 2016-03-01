get_dat <- function () {
  
  context <- rstudioapi::getActiveDocumentContext()
  dat_name <- context$selection[[1]]$text
  
  if (nchar(dat_name) == 0) {
    err_msg <- "Nothing highlighted (in the RStudio source editor). \nWhat do you want to copy?"
    stop(err_msg, call. = FALSE)
  }
  
  dat <- get(dat_name, envir = .GlobalEnv)
  
  stopifnot(is.data.frame(dat))
  attr(df, "name") <- dat_name
  return(dat)
  
}