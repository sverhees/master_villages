
# create new villages dataset from subsets

library(tidyverse)

chechnya <- readxl::read_xlsx("subsets/chechnya.xlsx")
daghestan <- readxl::read_xlsx("subsets/daghestan.xlsx")
ec_azerbaijan <- readxl::read_xlsx("subsets/ec_azerbaijan.xlsx")
georgia <- readxl::read_xlsx("subsets/georgia.xlsx")
ingushetia <- readxl::read_xlsx("subsets/ingushetia.xlsx")
tat <- readxl::read_xlsx("subsets/tat.xlsx")

# filter out entries without ID and coordinates
# > draft entries that require more info

new_villages <- rbind(chechnya, daghestan, ec_azerbaijan, 
                      georgia, ingushetia, tat) %>%
  filter(complete.cases(id)) %>%
  filter(complete.cases(lat))

write_tsv(new_villages, "new_villages.tsv")

# create TALD subset

setwd("/home/samira/Git/master_villages/data/TALD")

new_villages %>%
  filter(kutans == FALSE) %>%
  select(-c(village_altnames, coord_source, settlement_type,
            republic, region, elevation, kutans, source, page,
            gltl_village_dialect, gltc_village_dialect, gltl_dialect,
            gltc_dialect, dialect_comment, villagelang_comment, manual)) -> TALDprep 

TALDprep$standard <- ""
TALDprep$default_level <- TALDprep$lang

TALDprep <- TALDprep %>%
  relocate(standard, .after = family) %>%
  relocate(default_level, .after = standard)

standardlangs <- readxl::read_xlsx("standard_language_datapoints.xlsx")

new_TALD <- rbind(TALDprep, standardlangs) %>%
  mutate(dataset_version = Sys.Date())

write_tsv(new_TALD, "new_tald.tsv")

