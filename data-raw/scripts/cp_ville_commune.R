cp_ville_commune <- geographie::ptt %>%
  dplyr::select(code_postal, lib_commune1 = nom_localite, code_commune) %>%
  dplyr::full_join(
    dplyr::select(geographie::ods_geo, code_commune, lib_commune2 = com_nom_maj, lib_commune3 = com_nom_maj_court),
    by = "code_commune"
  ) %>%
  dplyr::mutate_at(c("lib_commune1", "lib_commune2", "lib_commune3"), stringr::str_remove_all, "[[:punct:]]+") %>%
  dplyr::mutate_at(c("lib_commune1", "lib_commune2", "lib_commune3"), stringi::stri_trans_general, "latin-ascii") %>%
  tidyr::gather(key = "champ", value = "lib_commune", dplyr::starts_with("lib_commune")) %>%
  dplyr::select(code_postal, lib_commune, code_commune) %>%
  dplyr::filter(!is.na(code_postal) & !is.na(lib_commune)) %>%
  unique()

usethis::use_data(cp_ville_commune, overwrite = TRUE)
