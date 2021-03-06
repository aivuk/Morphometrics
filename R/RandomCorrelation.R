#' Random Correlation 
#' 
#' Create a random correlation matrix using RcppEigen
#' @param num.traits Number of traits in random matrix
#' @param ke Parameter for correlation matrix generation. Involves check for positive defitness
#' @return Random correlation matrix with size (dimension x dimension)
#' @author Edgar Zanella
#' @keywords randommatrices
#' @export
#' @useDynLib Morphometrics
#' @import RcppEigen
#' @importFrom Rcpp evalCpp
RandomCorrelation <- function (dimension, k=10**-3) {
  m <- createRandomMatrix(dimension, k)
  return(m)
}