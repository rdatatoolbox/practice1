#' Download PanTHERIA dataset
#'
#' @description 
#' This function downloads the PanTHERIA dataset (text file) hosted on the 
#' GitHub repository <https://github.com/rdatatoolbox/datarepo/>. The file
#' won't be downloaded if already exists locally (except if `overwrite = TRUE`).
#' The file `PanTHERIA_1-0_WR05_Aug2008.txt` will be stored in 
#' `data/pantheria/`. This folder will be created if required.
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
#' dl_pantheria_data()
#' }

dl_pantheria_data <- function(overwrite = FALSE) {
  
  ## Destination location ---- 
  
  path <- here::here("data", "pantheria")
  
  
  ## File name ----
  
  filename <- "PanTHERIA_1-0_WR05_Aug2008.txt"
  
  
  ## GitHub URL ----
  
  url <- paste0("https://raw.githubusercontent.com/rdatatoolbox/datarepo/main/",
                "data/pantheria/")
  
  
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
