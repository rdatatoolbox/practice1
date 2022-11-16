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
