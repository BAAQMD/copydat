#' Open a connection to the system clipboard
#' 
#' @export
clipboard <- function () {
  
  if (Sys.info()[["sysname"]] == "Darwin") {
    return(pipe("pbcopy", "w"))
  } else {
    stop("Help by contributing support for more platforms! :-D")
  }
  
}