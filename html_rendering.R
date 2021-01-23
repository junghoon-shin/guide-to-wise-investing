library(rmarkdown)
library(tidyverse)

render(input = "guide_for_wise_investing.Rmd",
       output_file = "index",
       output_dir = file.path(str_replace(getwd(), "/[Ii]nvestment", ""), "junghoon-shin.github.io"))