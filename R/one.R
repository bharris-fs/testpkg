#' Fit and display a linear fit.
#'
#' \code{displaylm} fits a formula to data and then displays it.
#'
#' \code{displaylm} uses \code{lm} and \code{display} to display the
#' results of a fit.
#' @param formula The \code{lm} standard formula interface.
#' @param df The df of data to fit.
#' @return The output of \code{arm::display}.
#' @examples
#' library(testpkg)
#' library(arm)
#' alpha = 1
#' beta <- 0.7
#' df <- data.frame(
#'   x = 1:10,
#'   y = alpha + beta * 1:10 + rnorm(10))
#' displaylm(formula = 'y ~ 1 + x', df = df)
#' @export
displaylm <- function(formula, df) {
    fit <- stats::lm(formula, data = df)
    arm::display(fit)
}
    
    
