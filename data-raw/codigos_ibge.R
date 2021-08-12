## code to prepare `codigos_ibge` dataset goes here

codigos_ibge <- readr::read_csv("data-raw/codigos_ibge.csv") %>%
  janitor::clean_names() %>%
  rename(cod_mun_ibge = codigo1,
         cod_mun_ibge6 = codigo2) %>%
  mutate(name_mun = stringr::str_to_lower(municipio),
         name_mun = stringr::str_replace_all(name_mun, "-", " "),
         name_mun = stringi::stri_trans_general(name_mun, "Latin-ASCII"))


usethis::use_data(codigos_ibge, overwrite = TRUE)
