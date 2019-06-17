#' Check randomised pairs of present-buyers and receivers.
#'
#' @param df A data frame containing two columns
#' @return The same data frame if all pairs pass the checks or an error if any check fails
#' @export
#' @examples
#' pairs_df <- data.frame(buyer = c("tom", "dick", "harry"), receiver = c("harry", "tom", "dick"))
#' check_pairs(df = pairs_df)
check_pairs <- function(df) {

  undesired_matches <- FALSE

  if (any_equal(df) == TRUE) {
  undesired_matches <- TRUE
  }

  string_pairs <- stringr::str_c(df[, 1] , df[, 2], sep = " ")
  pairs_string <- stringr::str_c(df[, 2] , df[, 1], sep = " ")

  if (any(string_pairs %in% pairs_string)) {
    undesired_matches <- TRUE
  }

  if (undesired_matches == TRUE) {
    return(TRUE)
  }

  else {
    return(FALSE)
  }

}
