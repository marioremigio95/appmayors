## code to prepare `treat_mun_1976` dataset goes here

##### IDENTIFYING TREATED UNITS 1976

#LEGEND:
# ASN = Área de Segurança Nacional (National Security Zone)
# EH = Estância Hidromineral (Hydromineral Resort)
# ENR = Eleições Não Realizadas (Elections Not Held)
# TF = Território Ferederal (Federal Zone)

###### 1976 MUNICIPAL ELECTIONS
######### Data From 1976 Municipal Elections (Tribunal Superior Eleitoral):

################ ACRE: #####

TREAT_AC_1976 <- c("Rio Branco", "Brasiléia", "Cruzeiro do Sul", "Feijó", "Sena Madureira",
                   "Tarauacá","Xapuri", "Senador Guiomard", "Plácido de Castro",
                   "Manoel Urbano", "Mâncio Lima", "Assis Brasil")

TREAT_AC_1976_TYPE <- c("Capital","ASN", "ASN", "ASN","ASN", "ASN","ASN",
                        rep("ASN", 5))

STATE_AC_1976 <- c(rep("AC", 12))

################ ALAGOAS: #####

TREAT_AL_1976 <- c("Maceió")

TREAT_AL_1976_TYPE <- c("Capital")

STATE_AL_1976 <- c("AL")


################ AMAZONAS: #####

TREAT_AM_1976 <-  c("Manaus",
                    "Atalaia do Norte",
                    "Barcelos",
                    "Benjamin Constant",
                    "Ipixuna",
                    "Japurá",
                    "Santa Isabel do Rio Negro",
                    "Santo Antônio do Içá",
                    "São Gabriel da Cachoeira",
                    "São Paulo de Olivença")

TREAT_AM_1976_TYPE <- c("Capital", rep("ASN", 9))

STATE_AM_1976 <- c(rep("AM", 10))

################ AMAPÁ: #####

TREAT_AP_1976 <- c("Macapá",
                   "Amapá",
                   "Calçoene",
                   "Mazagão",
                   "Oiapoque")

TREAT_AP_1976_TYPE <- c("Capital", rep("TF", 4))

STATE_AP_1976 <- c(rep("AP", 5))



################ BAHIA: #####

TREAT_BA_1976 <- c("Salvador",
                   "Camaçari",
                   "Candeias",
                   "Casa Nova",
                   "Cipó",
                   "Itaparica",
                   "Lauro de Freitas",
                   "Paulo Afonso",
                   "Pilão Arcado",
                   "Remanso",
                   "São Francisco do Conde",
                   "Sento Sé",
                   "Simões Filho")

TREAT_BA_1976_TYPE <- c("Capital", "ASN", "ASN","ASN", "EH","EH", rep("ASN",7))

STATE_BA_1976 <- c(rep("BA", 13))

################ CEARÁ: #####

TREAT_CE_1976 <- c("Fortaleza")

TREAT_CE_1976_TYPE <- c("Capital")

STATE_CE_1976 <- c("CE")

################ ESPÍRITO SANTO: #####

TREAT_ES_1976 <- c("Vitória")

TREAT_ES_1976_TYPE <- c("Capital")

STATE_ES_1976 <- c("ES")

################ GOIÁS: #####

TREAT_GO_1976 <- c("Goiânia",
                   "Caldas Novas",
                   "Itajá",
                   "Anápolis")

TREAT_GO_1976_TYPE <- c("Capital", rep("EH", 2), "ASN")

STATE_GO_1976 <- c(rep("GO", 4))

################ MARANHÃO: #####

TREAT_MA_1976 <- c("São Luís","São João dos Patos")

TREAT_MA_1976_TYPE <- c("Capital", "ASN")

STATE_MA_1976 <- c(rep("MA", 2))

################ MATO GROSSO: ######

TREAT_MT_1976 <- c("Cuiabá",
                   "Amambaí",
                   "Antônio João",
                   "Aral Moreira",
                   "Bela Vista",
                   "Cáceres",
                   "Caracol",
                   "Corumbá",
                   "Eldorado",
                   "Iguatemi",
                   "Ladário",
                   "Mato Grosso",
                   "Mirassol D'Oeste",
                   "Mundo Novo",
                   "Ponta Porá",
                   "Porto Murtinho",
                   "Três Lagoas")

TREAT_MT_1976_TYPE <- c("Capital", rep("ASN", 16))

STATE_MT_1976 <- c(rep("MT", 17))


################ MINAS GERAIS: #####

TREAT_MG_1976 <- c("Belo Horizonte",
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

TREAT_MG_1976_TYPE <- c("Capital", rep("EH", 13))

STATE_MG_1976 <- c(rep("MG", 14))

################ PARÁ: #####

TREAT_PA_1976 <- c("Belém",
                   "Almeirim",
                   "Altamira",
                   "Itaituba",
                   "Marabá",
                   "Óbidos",
                   "Oriximiná",
                   "Santarém",
                   "Monte Alegre",
                   "Salinópolis")

TREAT_PA_1976_TYPE <- c("Capital", rep("ASN",7), rep("EH", 2))

STATE_PA_1976 <- c(rep("PA", 10))

################ PARAÍBA: #####

TREAT_PB_1976 <- c("João Pessoa")

TREAT_PB_1976_TYPE <- c("Capital")

STATE_PB_1976 <- c("PB")

################ PARANÁ: ######

TREAT_PR_1976 <- c("Curitiba",
                   "Barracão",
                   "Capanema",
                   "Foz do Iguaçu",
                   "Guaíra",
                   "Marechal Cândido Rondon",
                   "Medianeira",
                   "Pérola do Oeste",
                   "Planalto",
                   "Santa Helena",
                   "Santo Antônio do Sudoeste",
                   "São Miguel do Iguaçu")

TREAT_PR_1976_TYPE <- c("Capital", rep("ASN", 11))

STATE_PR_1976 <- c(rep("PR", 12 ))

################ PERNAMBUCO: ######

TREAT_PE_1976 <- c("Recife")

TREAT_PE_1976_TYPE <- c("Capital")

STATE_PE_1976 <- c("PE")

################ PIAUÍ: #####

TREAT_PI_1976 <- c("Teresina", "Guadalupe")

TREAT_PI_1976_TYPE <- c("Capital", "ASN")

STATE_PI_1976 <- c(rep("PI", 2))

################ RIO DE JANEIRO: #####

TREAT_RJ_1976 <- c("Rio de Janeiro",
                   "Angra dos Reis",
                   "Duque de Caxias",
                   "Santo Antônio de Pádua",
                   "Volta Redonda"
)

TREAT_RJ_1976_TYPE <- c("Capital", rep("ASN", 2), "EH", "ASN")

STATE_RJ_1976 <- c(rep("RJ", 5))

################ RIO GRANDE DO NORTE: #####

TREAT_RN_1976 <- c("Natal")

TREAT_RN_1976_TYPE <- c("Capital")

STATE_RN_1976 <- c("RN")


################ RIO GRANDE DO SUL: #####

TREAT_RS_1976 <- c("Porto Alegre",
                   "Alecrim",
                   "Bagé",
                   "Canoas",
                   "Crissiumal",
                   "Dom Pedrito",
                   "Erval",
                   "Horizontina",
                   "ltaquí",
                   "Jaguarão",
                   "Osório",
                   "Porto Lucena",
                   "Porto Xavier",
                   "Quarai",
                   "Rio Grande",
                   "Roque Gonzales",
                   "Santa Vitória do Palmar",
                   "Sant'Ana do Livramento",
                   "São Borja",
                   "São Nicolau",
                   "Tenente Portela",
                   "Tramandaí",
                   "Três Passos",
                   "Tucunduva",
                   "Tuparendi",
                   "Uruguaiana",
                   "Iraí",
                   "Vicente Dutra ")

TREAT_RS_1976_TYPE <- c("Capital", rep("ASN", 25), "EH", "EH")

STATE_RS_1976 <- c(rep("RS", 28))

################ RONDÔNIA: #####

TREAT_RO_1976 <- c("Porto Velho", "Guajará-Mirim")

TREAT_RO_1976_TYPE <- c("Capital", "TF")

STATE_RO_1976 <- c(rep("RO",2))

################ RORAIMA: #####

TREAT_RR_1976 <- c("Boa Vista", "Caracaraí")

TREAT_RR_1976_TYPE <- c("Capital", "TF")

STATE_RR_1976 <- c(rep("RR",2))



################ SANTA CATARINA: #####

TREAT_SC_1976 <- c("Florianópolis",
                   "Águas de Chapecó",
                   "Descanso",
                   "Dionísio Cerqueira",
                   "Gravatal",
                   "Guaraciaba",
                   "Itapiranga",
                   "Pedras Grandes",
                   "Piratuba",
                   "São José do Cedro",
                   "São Miguel D'Oeste",
                   "Santo Amaro da Imperatriz"
)

TREAT_SC_1976_TYPE <- c("Capital", "EH", "ASN", "ASN", "EH",
                        "ASN", "ASN", "EH", "EH", "ASN", "ASN",
                        "EH")

STATE_SC_1976 <- c(rep("SC", 12))

################ SÃO PAULO: #####

TREAT_SP_1976 <- c("São Paulo",
                   "Águas da Prata",
                   "Águas de Lindóia",
                   "Águas de São Pedro",
                   "Amparo",
                   "Atibaia",
                   "Castilho",
                   "Campos de Jordão",
                   "Cubatão",
                   "Ibirá",
                   "Lindóia",
                   "Monte Alegre do Sul",
                   "Paulínia",
                   "Poá",
                   "Santa Bárbara do Pardo",
                   "Santos",
                   "São José dos Campos",
                   "São Sebastião",
                   "Serra Negra",
                   "Socorro"
)

TREAT_SP_1976_TYPE <- c("Capital", rep("EH",5), "ASN", "EH",
                        "ASN", rep("EH",3), "ASN", "EH", "EH",
                        "ASN", "EH", "ASN", "EH", "EH")

STATE_SP_1976 <- c(rep("SP", 20))




################ SERGIPE: ####

TREAT_SE_1976 <- c("Aracaju")

TREAT_SE_1976_TYPE <- c("Capital")

STATE_SE_1976 <- c("SE")







################ JOINING DATA: #####
treat_mun_1976 <- tibble(name_mun_1970 =
                               c(TREAT_AC_1976, TREAT_AL_1976,
                                 TREAT_AM_1976, TREAT_AP_1976,
                                 TREAT_BA_1976, TREAT_CE_1976,
                                 TREAT_ES_1976, TREAT_GO_1976,
                                 TREAT_MA_1976, TREAT_MT_1976,
                                 TREAT_MG_1976,
                                 TREAT_PA_1976, TREAT_PB_1976,
                                 TREAT_PR_1976, TREAT_PE_1976,
                                 TREAT_PI_1976, TREAT_RJ_1976,
                                 TREAT_RN_1976, TREAT_RS_1976,
                                 TREAT_RO_1976, TREAT_RR_1976,
                                 TREAT_SC_1976, TREAT_SP_1976,
                                 TREAT_SE_1976),

                             type = c(TREAT_AC_1976_TYPE, TREAT_AL_1976_TYPE,
                                        TREAT_AM_1976_TYPE, TREAT_AP_1976_TYPE,
                                        TREAT_BA_1976_TYPE,
                                        TREAT_CE_1976_TYPE, TREAT_ES_1976_TYPE,
                                        TREAT_GO_1976_TYPE, TREAT_MA_1976_TYPE,
                                        TREAT_MT_1976_TYPE, TREAT_MG_1976_TYPE,
                                        TREAT_PA_1976_TYPE, TREAT_PB_1976_TYPE,
                                        TREAT_PR_1976_TYPE, TREAT_PE_1976_TYPE,
                                        TREAT_PI_1976_TYPE, TREAT_RJ_1976_TYPE,
                                        TREAT_RN_1976_TYPE, TREAT_RS_1976_TYPE,
                                        TREAT_RO_1976_TYPE, TREAT_RR_1976_TYPE,
                                        TREAT_SC_1976_TYPE, TREAT_SP_1976_TYPE,
                                        TREAT_SE_1976_TYPE),

                             uf_1970 = c(STATE_AC_1976, STATE_AL_1976,
                                         STATE_AM_1976, STATE_AP_1976,
                                         STATE_BA_1976,
                                         STATE_CE_1976, STATE_ES_1976,
                                         STATE_GO_1976, STATE_MA_1976,
                                         STATE_MT_1976, STATE_MG_1976,
                                         STATE_PA_1976, STATE_PB_1976,
                                         STATE_PR_1976, STATE_PE_1976,
                                         STATE_PI_1976, STATE_RJ_1976,
                                         STATE_RN_1976, STATE_RS_1976,
                                         STATE_RO_1976, STATE_RR_1976,
                                         STATE_SC_1976, STATE_SP_1976,
                                         STATE_SE_1976)
)

treat_mun_1976 <- treat_mun_1976 %>%
  mutate(name_mun_1970 = stringr::str_to_lower(name_mun_1970),
         name_mun_1970 = stringr::str_replace_all(name_mun_1970, "-", " "),
         name_mun_1970 = stringi::stri_trans_general(name_mun_1970, "Latin-ASCII"))

usethis::use_data(treat_mun_1976, overwrite = TRUE)
