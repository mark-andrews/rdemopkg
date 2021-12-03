#' Convert probabilities to odds
#'
#' Odds are an alternative means to quantify probabilities of events.
#' If the probability of an event has a value `p`, the odds corresponding
#' to `p` is `p/(1-p)`.
#'
#' @param p A numeric vector of probabilities, which are values between 0.0 
#'  and 1.0.
#'
#' @return A numeric vector of odds, which are values between zero and infinity.
#' @export
#'
#' @examples
#' p <- c(0.25, 0.5, 0.75)
#' probs_to_odds(p)
probs_to_odds <- function(p) {
  p/(1-p)
}

#' Convert odds to probabilities
#' 
#' This is the inverse of the function that calculates odds from probabilities.
#' For any given value of odds, the corresponding probability `p` where 
#' `odds = p/(1-p)` is returned.
#'
#' @param odds A numeric vector of non-negative values, representing odds.
#'
#' @return A numeric vector of probabilities.
#' @export
#'
#' @examples
#' odds <- c(1, 3, 9)
#' odds_to_probs(odds)
odds_to_probs <- function(odds){
  odds/(1 + odds)
}

#' Convert probabilities to log odds
#'
#' Log odds, also known as logits, are the logarithms, 
#' usually to the base of the natural logarithms, of odds.
#'
#' @param p A numeric vector of probabilities, which are values between 0.0 
#'  and 1.0.
#'
#' @return A numeric vector of logits, which are positive or negative real numbers.
#' @export
#'
#' @examples
#' p <- c(0.1, 0.25, 0.5, 0.9)
#' logit(p)
logit <- function(p) {
  log(p / (1 - p))
}

#' Convert logits to probabilities
#' 
#' This implements the inverse logit function. This function is also the 
#' cumulative distribution function of the logistic distributions, and so is 
#' available using the [stats::plogis()] function.
#'
#' @param log_odds A numeric vector of positive or negative real numbers that 
#'  represent log odds, also known as logits.
#'
#' @return A vector of probabilities, which are values between 0.0 and 1.0.
#' @export
#'
#' @examples
#' x <- rnorm(5)
#' ilogit(x)
ilogit <- function(log_odds) {
  1 / (1 + exp(- log_odds))
}
