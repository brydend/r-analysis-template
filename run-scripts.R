# Enter all scripts that need to be run.

# This could run in parallel with a markdown file, although in theory not.

# Cycle through valid scripts in each valid folder.

my.files <- files.list("extract")

for (source.file in my.files) {

  source("source.file")

}

my.files <- files.list("transform")

for (source.file in my.files) {

  source("source.file")

}

my.files <- files.list("analysis")

for (source.file in my.files) {

  source("source.file")

}

my.files <- files.list("load")

for (source.file in my.files) {

  source("source.file")

}

