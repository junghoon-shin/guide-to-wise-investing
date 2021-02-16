#!/usr/bin/Rscript

library(bookdown)
library(funr)
library(tidyverse)

project_directory = sys.script() %>% str_extract("^.+(?=/render_book)")

setwd(project_directory)

render_book("index.Rmd")