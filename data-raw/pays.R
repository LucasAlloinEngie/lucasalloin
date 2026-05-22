## code to prepare `pays` dataset goes here
library(dplyr)

pays <- read.csv("data-raw/pays.csv", header = FALSE) %>%
  # remove first column containing useless info
  select(-1) %>%
  rename(
    ISO_3166_1_num = V2,
    ISO_3166_1_alpha2 = V3,
    ISO_3166_1_alpha3 = V4,
    nom_francais = V5,
    nom_anglais = V6
  )

usethis::use_data(pays, overwrite = TRUE)
