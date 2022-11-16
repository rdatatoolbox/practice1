#' Download WWF WildFinder datasets
#'
#' @description 
#' This function downloads the WWF WildFinder dataset (csv files) hosted on the 
#' GitHub repository <https://github.com/rdatatoolbox/datarepo/>. The files
#' won't be downloaded if already exist locally (except if `overwrite = TRUE`).
#' Three `.csv` files will be stored in `data/wildfinder/`:
#'   - `wildfinder-ecoregions_list.csv` 
#'   - `wildfinder-ecoregions_species.csv`
#'   - `wildfinder-mammals_list.csv`
#' The folder `data/wildfinder/` will be created if required.
#' 
#' @param overwrite a logical. If `TRUE`, the files will be downloaded again 
#'   and the previous versions will be erased.
#'
#' @return No return value.
#' 
#' @export
#' 
#' @examples 
#' \dontrun{
#' dl_wildfinder_data()
#' }

dl_wildfinder_data <- function(overwrite = FALSE) {
  
  ## Destination location ---- 
  
  path <- here::here("data", "wildfinder")
  
  
  ## File names ----
  
  filenames <- c("wildfinder-ecoregions_list.csv", 
                 "wildfinder-ecoregions_species.csv", 
                 "wildfinder-mammals_list.csv")
  
  
  ## GitHub URL ----
  
  url <- paste0("https://raw.githubusercontent.com/rdatatoolbox/datarepo/main/",
                "data/wildfinder/")
  
  
  ## Loop on files ----
  
  for (filename in filenames) {
    
    
    if (file.exists(file.path(path, filename)) && !overwrite) {
      
      
      ## Check if exists locally ----
      
      message(paste0("The filename '", filename, "' already exists. ", 
                     "Use 'overwrite = TRUE' to replace it"))
      
    } else {
      
      
      ## Create destination folder ----
      
      dir.create(path, showWarnings = FALSE, recursive = TRUE)
      
      
      ## Download file ----
      
      utils::download.file(url      = paste0(url, filename),
                           destfile = file.path(path, filename))
    }
  }
  
  
  invisible(NULL) 
}
