context("functions")

test_that('Randomisation of people', {

  people <- c("tom", "dick", "harry")
  expect_setequal(people, sample_pairs(people = people))

  firemen <- c("pugh", "pugh", "barney mcgrew", "cuthbert", "dibble", "grubb")
  expect_error(sample_pairs(people = firemen))

})

