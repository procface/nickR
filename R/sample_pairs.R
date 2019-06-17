#' Randomise secret santas to generate pairs of gift buyers and receivers.
#'
#' @param people A vector of names
#' @return A data frame containing a column with the original list of names and a randomised list
#' @export
#' @examples
#' sample_pairs(people = c("tom", "dick", "harry"))
sample_pairs <- function(people) {

  if (length(unique(people)) != length(people)) {

    stop("List of people is not unique")

  }

  return(sample(people))

}
