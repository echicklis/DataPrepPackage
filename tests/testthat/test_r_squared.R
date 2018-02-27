# You can learn more about package authoring with RStudio at:
#
#   http://r-pkgs.had.co.nz/
#
# Some useful keyboard shortcuts for package authoring:
#
#   Build and Reload Package:  'Ctrl + Shift + B'
#   Check Package:             'Ctrl + Shift + E'
#   Test Package:              'Ctrl + Shift + T'
library(DataPrep)

context("r squared")

test_that("Rsquared is greater than 0 ", {
  expect_equal(GetRSquared(lm(`Jitter(Abs)` ~ motor_UPDRS, parkinsons_updrs_data))>0, TRUE)
})
