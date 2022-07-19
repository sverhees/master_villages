
# create new villages dataset from subsets

library(tidyverse)

chechnya <- read_tsv("data/subsets/chechnya.csv")
daghestan <- read_tsv("data/subsets/daghestan.csv")
ec_azerbaijan <- read_tsv("data/subsets/ec_azerbaijan.csv")
georgia <- read_tsv("data/subsets/georgia.csv")
ingushetia <- read_tsv("data/subsets/ingushetia.csv")
tat <- read_tsv("data/subsets/tat.csv")

# filter out entries without ID and coordinates
# > draft entries that require more info

new_villages <- rbind(chechnya, daghestan, ec_azerbaijan, 
                      georgia, ingushetia, tat) %>%
  filter(complete.cases(id)) %>%
  filter(complete.cases(lat)) %>%
  mutate(version = Sys.Date())

write_tsv(new_villages, "villages.tsv")

# create TALD subset

setwd("/home/samira/Git/master_villages/data/TALD")

new_villages %>%
  filter(kutans == FALSE) %>%
  select(-c(village_altnames, coord_source, settlement_type,
            republic, region, elevation, kutans, source, page,
            gltl_village_dialect, gltc_village_dialect, gltl_dialect,
            gltc_dialect, dialect_comment, villagelang_comment, manual, version)) -> TALDprep 

TALDprep$standard <- ""
TALDprep$default_level <- TALDprep$lang

TALDprep <- TALDprep %>%
  relocate(standard, .after = family) %>%
  relocate(default_level, .after = standard)

standardlangs <- read_tsv("standard_language_datapoints.csv")

new_TALD <- rbind(TALDprep, standardlangs) %>%
  mutate(dataset_version = Sys.Date())

write_tsv(new_TALD, "tald_villages.tsv")

