
<!-- README.md is generated from README.Rmd. Please edit that file -->

# birthdayproblem

<!-- badges: start -->
<!-- badges: end -->

The goal of birthdayproblem is to be used as a demonstration of writing
a simple R package. It can be used to calculate (or approximate by
simulation) probabilities of people in a group sharing the same
birthday.

## Installation

You can install birthdayproblem from [GitHub](https://github.com/) with:

``` r
# install.packages("devtools")
devtools::install_github("heogden/birthdayproblem")
```

## Example

Suppose that there are 30 people in a room. What is the chance that at
least two of them share the same birthday?

``` r
library(birthdayproblem)
birthday_match_prob(30)
#> [1] 0.7063162
```
