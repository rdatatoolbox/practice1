#' Download project raw data
#'
#' @description 
#' This script will download the PanTHERIA and WWF WildFinder datasets. The
#' four files will be stored in `data/`.
#' 
#' All functions used in the script have been developed for this project
#' and can be found in the folder `R/`.
#'
#' @author Nicolas Casajus \email{nicolas.casajus@fondationbiodiversite.fr}
#' 
#' @date 2022/11/16


## Download PanTHERIA database ----

dl_pantheria_data(overwrite = FALSE)


## Download WWF WildFinder database ----

dl_wildfinder_data(overwrite = FALSE)


## Download databases description ----

dl_data_descr(overwrite = FALSE)
