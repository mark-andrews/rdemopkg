# create a data-frame of probabilities
probabilities <- tibble::tibble(p = c(0.1, 0.25, 0.5, 0.75, 0.9))

usethis::use_data(probabilities, overwrite = TRUE)
