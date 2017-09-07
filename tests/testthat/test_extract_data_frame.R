df <- data.frame(A=c(1,2,3),B=c(1,2,4), C=c(2,3,4), D=c(3,4,4))

test_that("Output",{
  expect_is(df[,-c("A","C")], "data.frame")
  expect_is(df[,1:2], "data.frame")
})
