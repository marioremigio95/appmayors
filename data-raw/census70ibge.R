## code to prepare `census70ibge` dataset goes here

# loading package
devtools::load_all(".")

# importing 70s census data
memory.limit(999999999999)

census70path <- list.files("data-raw/", pattern = "CENSO70")

census70 <- purrr::map_df(.x = census70path, .f = import_censo70)

# saving 70s census data

census70ibge <- census70 %>%
  mutate(dummy_school_age_prev_decade = if_else(idade >= 16 & idade < 28, 1, 0)) %>%
  mutate(religiao = if_else(religiao_B == 1, 1, 0)) %>%
  group_by(codmun, nome, ano, UF) %>%
  summarise(across(.cols = c(idade, freq_escola, anos_estudo, dummy_school_age_prev_decade, sexo, alfabetizado,
                             sit_setor_C, religiao, rend_total_def),
                   .fns = ~weighted.mean(., w = peso_pess, na.rm = TRUE)
  ), .groups = 'keep') %>%
  rename(year = ano,
         name_mun = nome,
         state_number = UF,
         mean_age = idade,
         mean_school_frequency = freq_escola,
         mean_schooling_years = anos_estudo,
         school_age_prev_decade_rate = dummy_school_age_prev_decade,
         male_pop = sexo,
         literacy_rate = alfabetizado,
         urban_pop = sit_setor_C,
         chatolic_pop = religiao,
         income_percapita_def = rend_total_def)

census70ibge <- census70ibge %>%
  mutate(name_mun = stringr::str_to_lower(name_mun),
         name_mun = stringr::str_replace_all(name_mun, "-", " "),
         name_mun = stringi::stri_trans_general(name_mun, "Latin-ASCII")
  )


usethis::use_data(census70ibge, overwrite = TRUE)



