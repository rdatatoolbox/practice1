#' Download data description (README)
#'
#' @description 
#' This function downloads the `README.md` of the GitHub repository
#' <https://github.com/rdatatoolbox/datarepo/> providing data description.
#' The file won't be downloaded if already exists locally (except if 
#' `overwrite = TRUE`).
#' The `README.md` will be stored in `data/`.
#' 
#' @param overwrite a logical. If `TRUE`, the file will be downloaded again and
#'   the previous version will be erased.
#'
#' @return No return value.
#' 
#' @export
#' 
#' @examples 
#' \dontrun{
#' dl_data_descr()
#' }

dl_data_descr <- function(overwrite = FALSE) {
  
  ## Destination location ---- 
  
  path <- here::here("data")
  
  
  ## File name ----
  
  filename <- "README.md"
  
  
  ## GitHub URL ----
  
  url <- "https://raw.githubusercontent.com/rdatatoolbox/datarepo/main/"
  
  
  if (file.exists(file.path(path, filename)) && !overwrite) {
    
    
    ## Check if exists locally ----
    
    message("The filename already exists. Use 'overwrite = TRUE' to replace it")
    
    
  } else {
    
    
    ## Create destination folder ----
    
    dir.create(path, showWarnings = FALSE, recursive = TRUE)
    
    
    ## Download file ----
    
    utils::download.file(url      = paste0(url, filename),
                         destfile = file.path(path, filename))
  }
  
  
  invisible(NULL) 
}
