
#' To import data from the 70s Census from the data-raw folder
#'
#' To import the data from the IBGE's 1970s Census stored in the data-raw folder
#'
#' @param file The Census70 file name (in .csv) for a certain state
#'
#' @return The correspondent Census70 file in data.frame format
#'
#' @export
import_censo70 <- function(file) {

  p <- paste0("data-raw/", file)

  x <- rio::import(p)

  if(purrr::is_character(x[['amc0010']])) {

    x[['amc0010']] <- stringr::str_remove_all(x[['amc0010']], "[:space:]")

    x[['amc0010']] <- stringr::str_remove_all(x[['amc0010']], "[:alpha:]")

    x[['amc0010']] <- as.integer(x[['amc0010']])

  }  # THESE IF's CORRECT FOR LACK OF STANDARDIZATION
  # IN THESE VARIABLES
  if(purrr::is_character(x[['newamc0010']])) {

    x[['newamc0010']] <- stringr::str_remove_all(x[['newamc0010']], "[:space:]")

    x[['newamc0010']] <- stringr::str_remove_all(x[['newamc0010']], "[:alpha:]")

    x[['newamc0010']] <- as.integer(x[['newamc0010']])

  }

  if(purrr::is_character(x[['amc9100']])) {

    x[['amc9100']] <- stringr::str_remove_all(x[['amc9100']], "[:space:]")

    x[['amc9100']] <- stringr::str_remove_all(x[['amc9100']], "[:alpha:]")

    x[['amc9100']] <- as.integer(x[['amc9100']])

  }

  if(purrr::is_character(x[['newamc9100']])) {

    x[['newamc9100']] <- stringr::str_remove_all(x[['newamc9100']], "[:space:]")

    x[['newamc9100']] <- stringr::str_remove_all(x[['newamc9100']], "[:alpha:]")

    x[['newamc9100']] <- as.integer(x[['newamc9100']])

  }

  if(purrr::is_character(x[['amc7000']])) {

    x[['amc7000']] <- stringr::str_remove_all(x[['amc7000']], "[:space:]")

    x[['amc7000']] <- stringr::str_remove_all(x[['amc7000']], "[:alpha:]")

    x[['amc7000']] <- as.integer(x[['amc7000']])

  }

  if(purrr::is_character(x[['newamc7000']])) {

    x[['newamc7000']] <- stringr::str_remove_all(x[['newamc7000']], "[:space:]")

    x[['newamc7000']] <- stringr::str_remove_all(x[['newamc7000']], "[:alpha:]")

    x[['newamc7000']] <- as.integer(x[['amc7000']])

  }

  return(x)
}

