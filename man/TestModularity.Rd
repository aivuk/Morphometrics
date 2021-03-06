% Generated by roxygen2 (4.1.0): do not edit by hand
% Please edit documentation in R/TestModularity.R
\name{TestModularity}
\alias{CreateHipotMatrix}
\alias{TestModularity}
\title{Test modularity hypothesis}
\usage{
TestModularity(cor.matrix, modularity.hipot, iterations = 100)

CreateHipotMatrix(modularity.hipot)
}
\arguments{
\item{cor.matrix}{Correlation matrix}

\item{modularity.hipot}{Matrix of hypothesis. Each line represents a trait and each column a module.
if modularity.hipot[i,j] == 1, trait i is in module j.}

\item{iterations}{Number of iterations, to be passed to MantelCor}
}
\value{
Returns mantel correlation and associated probability for each modularity hypothesis, along with AVG+, AVG-, AVG Ratio for each module.
A total hypothesis combining all hypotesis is also tested.
}
\description{
Tests modularity hypothesis using cor.matrix matrix and trait groupings
}
\examples{
cor.matrix <- RandomMatrix(10)
rand.hipots <- matrix(sample(c(1, 0), 30, replace=TRUE), 10, 3)
mod.test <- TestModularity(cor.matrix, rand.hipots)
}
\author{
Diogo Melo, Guilherme Garcia
}
\references{
Porto, Arthur, Felipe B. Oliveira, Leila T. Shirai, Valderes Conto, and Gabriel Marroig. 2009. "The Evolution of Modularity in the Mammalian Skull I: Morphological Integration Patterns and Magnitudes." Evolutionary Biology 36 (1): 118-35. doi:10.1007/s11692-008-9038-3.
}
\seealso{
\code{\link{MantelCor}}
}
\keyword{mantel}
\keyword{modularity}

