# package load function

packageLoad <-
  function(x) {
    for (i in 1:length(x)) {
      if (!x[i] %in% installed.packages()) {
        install.packages(x[i])
      }
      library(x[i], character.only = TRUE)
    }
  }

# use function to set up environment
# ggdark is not avaliable
packages <- c("tidyverse",
              "palmerpenguins",
              "rmarkdown",
              "mapproj",
              "ggthemes",
              "RColorBrewer",
              "viridis",
              "plotly",
              "readxl",
              "lterdatasampler",
              "rstatix",
              "httr",
              "jsonlite",
              "dataRetrieval",
              "installr",
              "Rtools")

packageLoad(packages)

# To execute run: source("setup.R")