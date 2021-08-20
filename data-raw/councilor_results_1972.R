## code to prepare `councilor_results_1972` dataset goes here

devtools::load_all(".")

cod_ibge <- appmayors::crosswalk_1960_1970 %>%
  select(uf_1970, cod_mun_ibge, name_mun_1970) %>%
  filter(!(is.na(name_mun_1970))) %>%
  mutate(name_mun_1970 = stringr::str_replace_all(name_mun_1970, "[:punct:]", " ")) %>%
  mutate(name_mun_1970 = stringr::str_squish(name_mun_1970))

cod_ibge[is.na(cod_ibge)] <- "empty_string"

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
         name_mun_1970 = stringi::stri_trans_general(name_mun_1970, "Latin-ASCII")) %>%
  mutate(name_mun_1970 = stringr::str_replace_all(name_mun_1970, "[:punct:]", " ")) %>%
  mutate(name_mun_1970 = stringr::str_squish(name_mun_1970)) %>%
  mutate(name_mun_1970 = stringr::str_replace(name_mun_1970, pattern = "^sta", "santa")) %>%
  mutate(name_mun_1970 = stringr::str_replace(name_mun_1970, pattern = "^s ", "sao ")) %>%
  mutate(name_mun_1970 = stringr::str_replace(name_mun_1970, pattern = "^pres ", "presidente ")) %>%
  mutate(name_mun_1970 = stringr::str_replace(name_mun_1970, pattern = "^gov ", "governador ")) %>%
  filter(across(.fns = ~!is.na(.))) %>%
  fuzzyjoin::stringdist_left_join(cod_ibge, max_dist = 1,by = c("uf_1970", "name_mun_1970")) %>%
  filter(uf_1970.x == uf_1970.y)

a <- councilor_results_1972 %>%
  filter(is.na(cod_mun_ibge)) %>%
  view()



usethis::use_data(councilor_results_1972, overwrite = TRUE)
