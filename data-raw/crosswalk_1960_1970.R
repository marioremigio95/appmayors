## code to prepare `crosswalk_1960_1970` dataset goes here

# loading package
devtools::load_all(".")

# importing and cleaning
crosswalk_1960_1970 <- read_csv("data-raw/crosswalk_1872_2010.csv") %>%
  select(uf_amc, code2010, data1970, data1960)

crosswalk_1960_1970 <- crosswalk_1960_1970 %>%
  mutate(data1970 = case_when(
    stringr::str_detect(data1970, "desmembrado") ~ as.character("NA"),
    stringr::str_detect(data1970, "anexado") ~ as.character("NA"),
    TRUE ~ data1970
  )) %>%
  mutate(data1970 = na_if(data1970, "NA")) %>%
  mutate(data1970 = stringr::str_to_lower(data1970),
         data1970 = stringr::str_replace_all(data1970, "-", " "),
         data1970 = stringi::stri_trans_general(data1970, "Latin-ASCII")
  ) %>%
  mutate(name_mun_1960 = case_when(
    stringr::str_detect(data1960, "desmembrado") ~ stringr::str_replace_all(data1960, "desmembrado de ", ""),
    stringr::str_detect(data1960, "anexado") ~  stringr::str_replace_all(data1960, "anexado a ", ""),
    TRUE ~ data1960
  )) %>%
  mutate(name_mun_1960 =  stringr::str_replace_all(name_mun_1960, " \\*", "")) %>%
  mutate(data1960 = na_if(data1960, "NA")) %>%
  mutate(name_mun_1960 = stringr::str_to_lower(name_mun_1960),
         name_mun_1960 = stringr::str_replace_all(name_mun_1960, "-", " "),
         name_mun_1960 = stringi::stri_trans_general(name_mun_1960, "Latin-ASCII")) %>%
  mutate(name_mun_1960 = case_when(
    name_mun_1960 == 'moji das cruzes' ~ 'mogi das cruzes',
    name_mun_1960 == 'sao caitano' ~ 'sao caetano',
    data1970 == 'sao lourenco da mata' ~ 'sao lourenco da mata',
    TRUE ~ name_mun_1960)) %>%
  rename(cod_mun_ibge = code2010,
         name_mun_1970 = data1970)

#ibge codes and municipalities states in 2010
df <- appmayors::codigos_ibge %>%
  select(uf,cod_mun_ibge)

#obtaining municipalities states in 1970
crosswalk_1960_1970 <- crosswalk_1960_1970 %>%
  left_join(df, by = 'cod_mun_ibge') %>%
  rename(uf_2010 = uf) %>%
  relocate(uf_2010) %>%
  mutate(uf_1970 = case_when(uf_2010 == "MS" ~ "MT",
                             uf_2010 == "TO" ~ "GO",
                             TRUE ~ uf_2010)) %>%
  relocate(uf_1970, .after = uf_2010) %>%
  select(-data1960, -uf_amc)

usethis::use_data(crosswalk_1960_1970, overwrite = TRUE)
