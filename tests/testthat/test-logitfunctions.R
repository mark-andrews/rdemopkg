test_that("logits & ilogits etc work", {
  expect_equal(logit(0.5), 0.0)
  expect_equal(ilogit(0.0), 0.5)
  expect_equal(probs_to_odds(0.5), 1)
  expect_equal(odds_to_probs(1), 0.5)
})
