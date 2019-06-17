#' Create a data frame of buyers and receivers for a secret santa randomisation
#'
#' @param people A vector of names
#' @return A data frame containing a column with the original list of names and a randomised list
#' @export
#' @examples
#' create_pairs(people = c("tom", "dick", "harry"))
create_pairs <- function(people) {

  people_tidy <- trimws(people)

  good_pairs <- FALSE

  while(good_pairs == FALSE) {

    good_pairs <- TRUE

    people_pairs <- people_tidy %>%
      cbind(sample_pairs(people_tidy))

    if (isTRUE(check_pairs(people_pairs) == TRUE)) {
      good_pairs <- FALSE
    }

  }

}
