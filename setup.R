#To run this package,in the new untitled (or titled file)  
#```{r}
#source("setup.R")
#```

#package load function (replaced the 'setup' script). Over time is...
#...adding additional packages to this list of packages ('packages')....
#...At the beginning of each workflow we run a single of line of code...
#...that says Source 'Setup.R' <-- which is the name of this file
packageLoad <-
  function(x) {
    for (i in 1:length(x)) {
      if (!x[i] %in% installed.packages()) {
        install.packages(x[i])
      }
      library(x[i], character.only = TRUE)
    }
  }

#use function to set up environment

#create a string of package names

packages <- c("tidyverse",     #designed for datascience, includes coretools like ggplot2, dplyr,tidyr, purr, and tibble and streamlines data wrangling, visualization, and functional programming
              "palmerpenguins",#Contains measurements for three penguin species from the Palmer Archipelago, Antarctica
              "rmarkdown",     #Supports reproducible reports, dashboards, slides, and websites; Allows you to “knit” R code chunks into HTML, PDF, or Word documents;Integrates with knitr, pandoc, and markdown syntax;Why it matters: It’s how you turn your analysis into polished, shareable documents—essential for homework, consulting, and peer review.
              "ggthemes",       # Adds professional and journal-style themes to ggplot2
              "RColorBrewer",   # Provides color palettes optimized for readability and print
              "viridis",        #Colorblind-friendly, perceptually uniform palettes
              "ggdark",         #Applies dark themes to ggplot2 for presentations or accessibility
              "plotly",         #Makes ggplots interactive—hover, zoom, click
              "janitor",        # for cleaning column names
              "lubridate",      # for date handling
              "ggthemes",       # for plot styling
              "scales",         # for axis formatting
              "knitr",          # for R Markdown chunk control
              "here",            # for reproducible file paths
              "lterdatasampler", # LTER datasets for ecological analysis- To access the dataset(s) you will be using in this lesson, we will be using a new data package called {lterdatasampler}. This package contains subsets of data from various Long Term Ecological Research (LTER) sites, designed for use in R teaching and training activities.
              "rstatix",         # Tidy statistical tests: which allows us to conduct various statistical tests that are ‘tidyverse’ friendly (aka, we can use them with the pipe %>%).
              "httr",
              "dataRetrieval",
              "jsonlite"
)

# use the packageLoad function we created on those packages

packageLoad(packages)

#NEXT STEP:

# Core tidyverse tools
library(tidyverse)

# Optional: load only if frequently used
# library(lterdatasampler)
# library(rstatix)
