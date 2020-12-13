# Enter all scripts that need to be run.
# This could run in parallel with a markdown file, although in theory not.

# Only extract files that start with a 2 digit number and end with .R
run.pattern <- "[0-9]{2}.*\\.R\\b"

source.files <- function (folder.name) {
  my.files <- list.files(folder.name, run.pattern, full.names = TRUE)
  if (length(my.files) > 0) {
    source(my.files)
  } else {
    print("No files to source")
  }
}

source("load.R")

source.files("extract")
source.files("transform")
source.files("analysis")
source.files("load")

rm(source.files)
rm(run.pattern)

