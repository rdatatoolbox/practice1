
<!-- README.md is generated from README.Rmd. Please edit that file -->

# Practice 1 - Research Compendium

<!-- badges: start -->

[![License:
GPL-2](https://img.shields.io/badge/License-GPL%20v2-blue.svg)](https://choosealicense.com/licenses/gpl-2.0/)
<!-- badges: end -->

Structure of the research compendium of the practice 1 of the workshop
**Data Toolbox for Reproducible Research in Ecology**
<https://rdatatoolbox.github.io/>

### How to cite

> Casajus N, Bonnici I, Dray S, Gimenez O, Guéry L, Guilhaumon F,
> Schiettekatte NMD & Siberchicot A (2022) Workshop FRB-CESAB & GdR
> EcoStat: Data Toolbox for Reproducible Research in Computational
> Ecology. Zenodo. <http://doi.org/10.5281/zenodo.4262978>.

### Content

This repository is structured as follow:

- [`data/`](https://github.com/frbcesab/practice-1/tree/master/data):
  contains all raw data required to perform analyses

- [`analyses/`](https://github.com/frbcesab/practice-1/tree/master/analyses/):
  contains R scripts to run each step of the workflow

- [`outputs/`](https://github.com/frbcesab/practice-1/tree/master/outputs):
  contains all the results created during the workflow

- [`figures/`](https://github.com/frbcesab/practice-1/tree/master/figures):
  contains all the figures created during the workflow

- [`R/`](https://github.com/frbcesab/practice-1/tree/master/R): contains
  R functions developed especially for this project

- [`man/`](https://github.com/frbcesab/practice-1/tree/master/man):
  contains help files of R functions

- [`DESCRIPTION`](https://github.com/frbcesab/practice-1/tree/master/DESCRIPTION):
  contains project metadata (author, date, dependencies, etc.)

- [`make.R`](https://github.com/frbcesab/practice-1/tree/master/make.R):
  main R script to run the entire project by calling each R script
  stored in the `analyses/` folder

### Usage

Clone the repository, open R/RStudio and run:

``` r
source("make.R")
```

### Notes

- All required packages, listed in the `DESCRIPTION` file, will be
  installed (if necessary)
- All required packages and R functions will be loaded
- Some analyses listed in the `make.R` might take time
