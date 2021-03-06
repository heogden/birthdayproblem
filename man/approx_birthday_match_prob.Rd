% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/probabilities.R
\name{approx_birthday_match_prob}
\alias{approx_birthday_match_prob}
\title{Approximate the probability that least two people in a group
have the same birthday}
\usage{
approx_birthday_match_prob(n_people, n_sim = 1e+05)
}
\arguments{
\item{n_people}{The number of people in the group.}

\item{n_sim}{The number of simulations to use in the approximation.}
}
\value{
An approximation to the probability that at least
two people in a group of this size share the same birthday.
}
\description{
Approximate the probability that least two people in a group
have the same birthday
}
\examples{
approx_birthday_match_prob(30, n_sim = 10000)
}
