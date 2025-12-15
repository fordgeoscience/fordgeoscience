# Package Load Function; a script to read a package name, check to see if it's been installed,
# install it if necessary, and load the library afterwards.

packageLoad <-
  function(x) {
    for (i in 1:length(x)) {
      if (!x[i] %in% installed.packages()) {
        install.packages(x[i])
      }
      library(x[i], character.only = TRUE)
    }
  }

# Use function to set up environment
# Create a concatenated (c) list of packages. Then run the list through the packageLoad function.
# Add package names to 'packages' throughout the semester as we use them..

packages <- c("tidyverse",
              "palmerpenguins",
              "rmarkdown",
              "sf", #Working with vector data
              "terra", #Working with raster data
              "tmap", #visualizing spatial data
              "rmarkdown",
              "tigris", #import vector data from the U.S. Census database (i.e., political boundaries, roads, etc.)
              "elevatr", #import elevation data
              #"rgdal",
              "ggthemes",
              "RColorBrewer",
              "viridis",
              "dichromat", #Added to expand color palettes for high-volume categorical data.
              "ggdark",
              "plotly",
              "readxl",
              "lterdatasampler",
              "rstatix",
              "lubridate",
              "httr",    #Used to get APIs
              "jsonlite", #Used to get APIs
              "scales", #Additional functionality for adjusting graph axes
              "mapview", #another common visualization package
              "leaflet", #one more, very powerful, interactive mapping package
              "rgbif", #import species occurrence data from the GBIF database
              "soilDB", #import snow depth data from SNOTEL sites across the U.S.
              "dataRetrieval", #Lets you lookup USGS station IDs.
              "DT",
              "rmdformats",
              "showtext"
              )

packageLoad(packages)
