## git clone https://github.com/australianunions/auugeo-data-federal-divisions.git

#fs <- list.files("../auugeo-data-federal-divisions/", full.names = TRUE, pattern = "json$", ignore.case = TRUE)
#file.copy(fs, file.path("extdata/auugeo-data-federal-divisions", basename(fs)))

library(sf)
fs <- list.files("extdata/auugeo-data-federal-divisions", full.names = TRUE, pattern = "json$", ignore.case = TRUE)
au_federal_div <- do.call(rbind, purrr::map(fs, read_sf))

usethis::use_data(au_federal_div)
