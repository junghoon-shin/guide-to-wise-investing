#!/usr/bin/Rscript

library(bookdown)

clean_book(clean = T)
render_book("index.Rmd")