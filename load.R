# Load our core libraries
library(tidyverse)
library(ggplot2)
library(lubricate)
library(openxlsx)

# Load additional project specific libraries


# Source our helpers
my.files <- list.files("helpers", ".*\\.R\\b", full.names = TRUE)
for (source.file in my.files) {
  source(source.file)
}
rm(my.files)

# Source any functions
my.files <- list.files("functions", ".*\\.R\\b", full.names = TRUE)
for (source.file in my.files) {
  source(source.file)
}
rm(my.files)
