% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/clusbootglm_s3_methods.R
\name{confint.clusbootglm}
\alias{confint.clusbootglm}
\title{Confidence intervals for cluster bootstrap model parameters}
\usage{
\method{confint}{clusbootglm}(object, parm = "all", level = 0.95,
  type = "percentile", ...)
}
\arguments{
\item{object}{object of class \code{clusbootglm}.}

\item{parm}{a specification of which parameters are to be given confidence intervals, either a vector of numbers 
or a vector of names. Defaults to all parameters.}

\item{level}{the required confidence level}

\item{type}{type of confidence level. Options are \code{percentile}, \code{parametric} and \code{BCa}.}

\item{...}{other arguments.}
}
\description{
Computes confidence intervals for one or more parameters in a fitted GLM with the cluster bootstrap.
}
\examples{
\dontrun{
data(opposites)
cbglm.1 <- clusbootglm(SCORE~Time*COG,data=opposites,clusterid=Subject)
confint(cbglm.1,parm=c("Time","COG"), level=.90, type="BCa")}
}
\author{
Mathijs Deen
}
