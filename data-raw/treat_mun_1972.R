## code to prepare `treat_mun_1972` dataset goes here

##### IDENTIFYING TREATED UNITS 1972

#LEGEND:
# ASN = Área de Segurança Nacional (National Security Zone)
# EH = Estância Hidromineral (Hydromineral Resort)
# ENR = Eleições Não Realizadas (Elections Not Held)
# TF = Território Ferederal (Federal Zone)

###### 1972 MUNICIPAL ELECTIONS
######### Data From 1972 Municipal Elections (Tribunal Superior Eleitoral, V.10, 1988):

################ ACRE: #####

TREAT_AC_1972 <- c("Rio Branco", "Brasiléia", "Cruzeiro do Sul", "Feijó", "Sena Madureira",
                   "Tarauacá","Xapuri")
TREAT_AC_1972_TYPE <- c("Capital","ASN", "ASN", "ASN","ASN", "ASN","ASN")

STATE_AC_1972 <- c(rep("AC", 7))

################ ALAGOAS: #####

TREAT_AL_1972 <- c("Maceió")

TREAT_AL_1972_TYPE <- c("Capital")

STATE_AL_1972 <- c("AL")


################ AMAZONAS: #####

TREAT_AM_1972 <-  c("Manaus",
                    "Atalaia do Norte",
                    "Barcelos",
                    "Benjamin Constant",
                    "Ipixuna",
                    "Japurá",
                    "Santa Isabel do Rio Negro",
                    "Santo Antônio do Içá",
                    "São Gabriel da Cachoeira",
                    "São Paulo de Olivença")

TREAT_AM_1972_TYPE <- c("Capital", rep("ASN", 9))

STATE_AM_1972 <- c(rep("AM", 10))

################ AMAPÁ: #####

TREAT_AP_1972 <- c("Macapá",
                   "Amapá",
                   "Calçoene",
                   "Mazagão",
                   "Oiapoque")

TREAT_AP_1972_TYPE <- c("Capital", rep("TF", 4))

STATE_AP_1972 <- c(rep("AP", 5))



################ BAHIA: #####

TREAT_BA_1972 <- c("Salvador",
                   "Camaçari",
                   "Candeias",
                   "Cipó",
                   "Itaparica",
                   "Lauro de Freitas",
                   "Paulo Afonso",
                   "São Francisco do Conde",
                   "Simões Filho")

TREAT_BA_1972_TYPE <- c("Capital", "ASN", "ASN", "EH","EH", rep("ASN",4))

STATE_BA_1972 <- c(rep("BA", 9))

################ CEARÁ: #####

TREAT_CE_1972 <- c("Fortaleza")

TREAT_CE_1972_TYPE <- c("Capital")

STATE_CE_1972 <- c("CE")

################ ESPÍRITO SANTO: #####

TREAT_ES_1972 <- c("Vitória")

TREAT_ES_1972_TYPE <- c("Capital")

STATE_ES_1972 <- c("ES")

################ GOIÁS: #####

TREAT_GO_1972 <- c("Goiânia",
                   "Caldas Novas",
                   "Goiás",
                   "Itajá")

TREAT_GO_1972_TYPE <- c("Capital", rep("EH", 3))

STATE_GO_1972 <- c(rep("GO", 4))

################ MARANHÃO: #####

TREAT_MA_1972 <- c("São Luís")

TREAT_MA_1972_TYPE <- c("Capital")

STATE_MA_1972 <- c("MA")

################ MATO GROSSO: ######

TREAT_MT_1972 <- c("Cuiabá",
                   "Amambaí",
                   "Antônio João",
                   # "Aripuanã",
                   "Bela Vista",
                   "Cáceres",
                   "Caracol",
                   "Corumbá",
                   "Iguatemi",
                   "Ladário",
                   "Vila Bela da Santíssima Trindade",
                   "Ponta Porá",
                   "Porto Murtinho",
                   "Três Lagoas")

TREAT_MT_1972_TYPE <- c("Capital","ASN", "ASN", rep("ASN", 10))

STATE_MT_1972 <- c(rep("MT", 13))


################ MINAS GERAIS: #####

TREAT_MG_1972 <- c("Belo Horizonte",
                   "Araxá",
                   "Caldas",
                   "Cambuquira",
                   "Carangola",
                   "Caxambu",
                   "Jacutinga",
                   "Lambari",
                   "Monte Sião",
                   "Passa Quatro",
                   "Patrocínio",
                   "Poços de Caldas",
                   "São Lourenço",
                   "Tiradentes")

TREAT_MG_1972_TYPE <- c("Capital", rep("EH", 13))

STATE_MG_1972 <- c(rep("MG", 14))

################ PARÁ: #####

TREAT_PA_1972 <- c("Belém",
                   "Almeirim",
                   "Altamira",
                   "Itaituba",
                   "Marabá",
                   "Óbidos",
                   "Oriximiná",
                   "Santarém",
                   "Monte Alegre",
                   "Salinópolis")

TREAT_PA_1972_TYPE <- c("Capital", rep("ASN",7), rep("EH", 2))

STATE_PA_1972 <- c(rep("PA", 10))

################ PARAÍBA: #####

TREAT_PB_1972 <- c("João Pessoa")

TREAT_PB_1972_TYPE <- c("Capital")

STATE_PB_1972 <- c("PB")

################ PARANÁ: ######

TREAT_PR_1972 <- c("Curitiba",
                   "Barracão",
                   "Capanema",
                   "Foz do Iguaçu",
                   "Guaíra",
                   "Marechal Cândido Rondon",
                   "Medianeira",
                   "Pérola d'Oeste",
                   "Planalto",
                   "Santa Helena",
                   "Santo Antônio do Sudoeste",
                   "São Miguel do Iguaçu")

TREAT_PR_1972_TYPE <- c("Capital", rep("ASN", 11))

STATE_PR_1972 <- c(rep("PR", 12 ))

################ PERNAMBUCO: ######

TREAT_PE_1972 <- c("Recife")

TREAT_PE_1972_TYPE <- c("Capital")

STATE_PE_1972 <- c("PE")

################ PIAUÍ: #####

TREAT_PI_1972 <- c("Teresina")

TREAT_PI_1972_TYPE <- c("Capital")

STATE_PI_1972 <- c("PI")

################ RIO DE JANEIRO: #####

TREAT_RJ_1972 <- c("Niterói",
                   "Angra dos Reis",
                   "Duque de Caxias",
                   "Santo Antônio de Pádua")

TREAT_RJ_1972_TYPE <- c("Capital", rep("ASN", 3))

STATE_RJ_1972 <- c(rep("RJ", 4))

################ RIO GRANDE DO NORTE: #####

TREAT_RN_1972 <- c("Natal")

TREAT_RN_1972_TYPE <- c("Capital")

STATE_RN_1972 <- c("RN")


################ RIO GRANDE DO SUL: #####

TREAT_RS_1972 <- c("Porto Alegre",
                   "Alecrim",
                   "Bagé",
                   "Canoas",
                   "Catuípe",
                   "Crissiumal",
                   "Dom Pedrito",
                   "Herval",
                   "Horizontina",
                   "Iraí",
                   "Itaquí",
                   "Jaguarão",
                   "Osório",
                   "Porto Lucena",
                   "Porto Xavier",
                   "Quarai",
                   "Rio Grande",
                   "Roque Gonzales",
                   "Santa Vitória do Palmar",
                   "Santana do Livramento",
                   "São Borja",
                   "São Nicolau",
                   "Tenente Portela",
                   "Tramandaí",
                   "Três Passos",
                   "Tucunduva",
                   "Tuparendi",
                   "Uruguaiana",
                   "Vicente Dutra")

TREAT_RS_1972_TYPE <- c("Capital", rep("ASN",3), "EH", rep("ASN", 4), "EH",
                        rep("ASN", 18), "EH")

STATE_RS_1972 <- c(rep("RS", 29))

################ RONDÔNIA: #####

TREAT_RO_1972 <- c("Porto Velho", "Guajará-Mirim")

TREAT_RO_1972_TYPE <- c("Capital", "TF")

STATE_RO_1972 <- c(rep("RO",2))

################ RORAIMA: #####

TREAT_RR_1972 <- c("Boa Vista", "Caracaraí")

TREAT_RR_1972_TYPE <- c("Capital", "TF")

STATE_RR_1972 <- c(rep("RR",2))



################ SANTA CATARINA: #####

TREAT_SC_1972 <- c("Florianópolis",
                   "Águas de Chapecó",
                   "Descanso",
                   "Dionísio Cerqueira",
                   "Gravatal",
                   "Guaraciaba",
                   "Itapiranga",
                   "Pedras Grandes",
                   "Piratuba",
                   "São José do Cedro",
                   "São Miguel Do Oeste",
                   "Santo Amaro da Imperatriz"
)

TREAT_SC_1972_TYPE <- c("Capital", "EH", "ASN", "ASN", "EH",
                        "ASN", "ASN", "EH", "EH", "ASN", "ASN",
                        "EH")

STATE_SC_1972 <- c(rep("SC", 12))

################ SÃO PAULO: #####

TREAT_SP_1972 <- c("São Paulo",
                   "Águas da Prata",
                   "Águas de Lindóia",
                   "Águas de São Pedro",
                   "Amparo",
                   "Atibaia",
                   "Castilho",
                   "Campos do Jordão",
                   "Cubatão",
                   "Ibirá",
                   "Lindóia",
                   "Monte Alegre do Sul",
                   "Paulínia",
                   "Poá",
                   "Águas de Santa Bárbara",
                   "Santos",
                   "São José dos Campos",
                   "São Sebastião",
                   "Serra Negra",
                   "Socorro"
)

TREAT_SP_1972_TYPE <- c("Capital", rep("EH",5), "ASN", "EH",
                        "ASN", rep("EH",3), "ASN", "EH", "EH",
                        "ASN", "EH", "ASN", "EH", "EH")

STATE_SP_1972 <- c(rep("SP", 20))




################ SERGIPE: ####

TREAT_SE_1972 <- c("Aracaju")

TREAT_SE_1972_TYPE <- c("Capital")

STATE_SE_1972 <- c("SE")







################ JOINING DATA: #####
treat_mun_1972 <- tibble(         name_mun_1970 =
                                    c(TREAT_AC_1972, TREAT_AL_1972,
                                      TREAT_AM_1972, TREAT_AP_1972,
                                      TREAT_BA_1972, TREAT_CE_1972,
                                      TREAT_ES_1972, TREAT_GO_1972,
                                      TREAT_MA_1972, TREAT_MT_1972,
                                      TREAT_MG_1972,
                                      TREAT_PA_1972, TREAT_PB_1972,
                                      TREAT_PR_1972, TREAT_PE_1972,
                                      TREAT_PI_1972, TREAT_RJ_1972,
                                      TREAT_RN_1972, TREAT_RS_1972,
                                      TREAT_RO_1972, TREAT_RR_1972,
                                      TREAT_SC_1972, TREAT_SP_1972,
                                      TREAT_SE_1972),

                                  type = c(TREAT_AC_1972_TYPE, TREAT_AL_1972_TYPE,
                                           TREAT_AM_1972_TYPE, TREAT_AP_1972_TYPE,
                                           TREAT_BA_1972_TYPE,
                                           TREAT_CE_1972_TYPE, TREAT_ES_1972_TYPE,
                                           TREAT_GO_1972_TYPE, TREAT_MA_1972_TYPE,
                                           TREAT_MT_1972_TYPE, TREAT_MG_1972_TYPE,
                                           TREAT_PA_1972_TYPE, TREAT_PB_1972_TYPE,
                                           TREAT_PR_1972_TYPE, TREAT_PE_1972_TYPE,
                                           TREAT_PI_1972_TYPE, TREAT_RJ_1972_TYPE,
                                           TREAT_RN_1972_TYPE, TREAT_RS_1972_TYPE,
                                           TREAT_RO_1972_TYPE, TREAT_RR_1972_TYPE,
                                           TREAT_SC_1972_TYPE, TREAT_SP_1972_TYPE,
                                           TREAT_SE_1972_TYPE),

                                  uf_1970 = c(STATE_AC_1972, STATE_AL_1972,
                                              STATE_AM_1972, STATE_AP_1972,
                                              STATE_BA_1972,
                                              STATE_CE_1972, STATE_ES_1972,
                                              STATE_GO_1972, STATE_MA_1972,
                                              STATE_MT_1972, STATE_MG_1972,
                                              STATE_PA_1972, STATE_PB_1972,
                                              STATE_PR_1972, STATE_PE_1972,
                                              STATE_PI_1972, STATE_RJ_1972,
                                              STATE_RN_1972, STATE_RS_1972,
                                              STATE_RO_1972, STATE_RR_1972,
                                              STATE_SC_1972, STATE_SP_1972,
                                              STATE_SE_1972)
)

treat_mun_1972 <- treat_mun_1972 %>%
  mutate(name_mun_1970 = stringr::str_to_lower(name_mun_1970),
         name_mun_1970 = stringr::str_replace_all(name_mun_1970, "-", " "),
         name_mun_1970 = stringi::stri_trans_general(name_mun_1970, "Latin-ASCII"))

devtools::load_all(".")

cod_mun_ibge <- appmayors::treat_mun_1976 %>%
  filter(name_mun_1970 %in% treat_mun_1972$name_mun_1970) %>%
  select(name_mun_1970, cod_mun_ibge, cod_mun_ibge6, uf_2010)

treat_mun_1972 <- treat_mun_1972 %>%
  left_join(cod_mun_ibge) %>%
  mutate(cod_mun_ibge = case_when(name_mun_1970 == 'goias' ~ 5208905,
                                  name_mun_1970 == 'niteroi' ~ 3303302,
                                  name_mun_1970 == 'catuipe'~ 4305009,
                                  TRUE ~ cod_mun_ibge)) %>%
  mutate(cod_mun_ibge6 = case_when(name_mun_1970 == 'goias' ~ 520890,
                                  name_mun_1970 == 'niteroi' ~ 330330,
                                  name_mun_1970 == 'catuipe'~ 430500,
                                  TRUE ~ cod_mun_ibge6))


usethis::use_data(treat_mun_1972, overwrite = TRUE)
