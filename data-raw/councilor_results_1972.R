## code to prepare `councilor_results_1972` dataset goes here

councilor_results_1972 <-
  map_df(.x = list.files("data-raw", pattern = "results_72"),
    .f = ~read_csv2(paste0("data-raw/", .))) %>%
  janitor::clean_names() %>%
  rename(name_mun_1970 = nome,
         uf_1970 = sigla,
         year = ano) %>%
  mutate(valid_votes = arena + mdb,
         arena_votes_share = arena/valid_votes,
         mdb_votes_share = mdb/valid_votes,
         brancos_share = brancos/valid_votes,
         nulos_share = nulos/valid_votes) %>%
  mutate(name_mun_1970 = stringr::str_to_lower(name_mun_1970),
         name_mun_1970 = stringr::str_replace_all(name_mun_1970, "-", " "),
         name_mun_1970 = stringi::stri_trans_general(name_mun_1970, "Latin-ASCII"))

usethis::use_data(councilor_results_1972, overwrite = TRUE)
