#' Approximate the probability that least two people in a group
#' have the same birthday
#'
#' @param n_people The number of people in the group.
#' @param n_sim The number of simulations to use in the approximation.
#'
#' @return An approximation to the probability that at least
#' two people in a group of this size share the same birthday.
#' @export
#'
#' @examples
#' approx_birthday_match_prob(30, n_sim = 10000)
approx_birthday_match_prob <- function(n_people, n_sim = 100000) {
  matches <- replicate(n_sim, {
    birthdays <- sample(1:365, n_people, replace = TRUE)
    table(birthdays)
    any(table(birthdays) > 1)
  })
  mean(matches)
}

#' Find the probability that at least two people in a group
#' have the same birthday
#'
#' @return The probability that at least
#' two people in a group of this size share the same birthday.
#' @export
#'
#' @examples
#' birthday_match_prob(30)
#' @inheritParams approx_birthday_match_prob
birthday_match_prob <- function(n_people) {
  if(n_people >= 365) {
    prob_no_match <- 0
  } else {
    components <- 1 - ((1:n_people) - 1) / 365
    prob_no_match <- prod(components)
  }
  1 - prob_no_match
}
