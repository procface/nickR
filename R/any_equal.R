#' Checks if any person has been sampled to buy themselves a present.
#'
#' @param df A data frame containing two columns
#' @return TRUE if an individual is to buy for themselves and FALSE if everybody is buying for someone else
#' @export
#' @examples
#' pairs_df <- data.frame(buyer = c("tom", "dick", "harry"), receiver = c("harry", "tom", "dick"))
#' any_equal(df = pairs_df)
any_equal <- function(df) {

  if (any(df[,1] == df[,2])) {
    return(TRUE)
  }

  else {
    return(FALSE)
  }

}
