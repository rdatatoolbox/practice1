# :mortar_board: Data repository <img src="https://raw.githubusercontent.com/rdatatoolbox/course-compendium/main/img/compendium-logo.png" height="120" align="right"/>

[![License: CC
BY 4.0](https://img.shields.io/badge/License-CC%20BY%204.0-lightgreen.svg)](https://choosealicense.com/licenses/cc-by-4.0/)


Data used during the workshop :mortar_board: 
[**_Data Toolbox for Reproducible Research in Ecology_**](https://rdatatoolbox.github.io) co-organized by the 
[FRB-CESAB](https://www.fondationbiodiversite.fr/en/about-the-foundation/le-cesab/) 
and the 
[GdR EcoStat](https://sites.google.com/site/gdrecostat/).


### Data description

#### PanTHERIA [:globe_with_meridians:](https://esajournals.onlinelibrary.wiley.com/doi/10.1890/08-1494.1)

PanTHERIA is a species-level database of life history, ecology, and geography of 
extant and recently extinct mammals. The dataset can be found in 
[`data/pantheria/PanTHERIA_1-0_WR05_Aug2008.txt`](https://raw.githubusercontent.com/rdatatoolbox/datarepo/main/data/pantheria/PanTHERIA_1-0_WR05_Aug2008.txt). Metadata can be found [here](https://esapubs.org/archive/ecol/E090/184/metadata.htm). 
Missing values are coded `-999`.

**Citation:** Kate EJ, Bielby J, Cardillo M _et al._ (2009) PanTHERIA: A 
species-level database of life history, ecology, and geography of extant and 
recently extinct mammals. _Ecology_, 90, 2648. DOI: [10.1890/08-1494.1](https://doi.org/10.1890/08-1494.1)


#### WWF Wildfinder [:globe_with_meridians:](https://www.worldwildlife.org/pages/wildfinder-database)

The WWF WildFinder database contains presence/absence data for the world's terrestrial amphibians, reptiles, birds, and mammals, by terrestrial ecoregion. In this repository, only 4,936 mammals species are provided. Data have cleaned and are structured in three `csv` files:

  - [`data/wildfinder/wildfinder-mammals_list.csv`](https://raw.githubusercontent.com/rdatatoolbox/datarepo/main/data/wildfinder/wildfinder-mammals_list.csv) : list of 4,936 World mammals species;
  - [`data/wildfinder/wildfinder-ecoregions_list.csv`](https://raw.githubusercontent.com/rdatatoolbox/datarepo/main/data/wildfinder/wildfinder-ecoregions_list.csv) : list of the 798 world terrestrial ecoregions defined by the WWF;
  - [`data/wildfinder/wildfinder-ecoregions_species.csv`](https://raw.githubusercontent.com/rdatatoolbox/datarepo/main/data/wildfinder/wildfinder-ecoregions_species.csv) : association between species and ecoregions.

**Citation:** World Wildlife Fund (2006) WildFinder: Online database of species distributions. Version Jan-06. URL: https://www.worldwildlife.org/pages/wildfinder-database


### Citation

> Casajus N, Dray S, Gimenez O, Guéry L, Guilhaumon F & Schiettekatte NMD (2022) *Workshop FRB-CESAB & GdR EcoStat: Data Toolbox for Reproducible Research in Computational Ecology*. Zenodo. <http://doi.org/10.5281/zenodo.4262978>.
