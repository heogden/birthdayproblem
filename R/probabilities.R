approx_birthday_match_prob <- function(n_people, n_sim = 100000) {
  matches <- replicate(n_sim, {
    birthdays <- sample(1:365, n_people, replace = TRUE)
    table(birthdays)
    any(table(birthdays) > 1)
  })
  mean(matches)
}

birthday_match_prob <- function(n_people) {
  if(n_people >= 365) {
    prob_no_match <- 0
  } else {
    components <- 1 - ((1:n_people) - 1) / 365
    prob_no_match <- prod(components)
  }
  1 - prob_no_match
}
