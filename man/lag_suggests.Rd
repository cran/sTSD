% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/data.R
\docType{data}
\name{lag_suggests}
\alias{lag_suggests}
\title{Suggested Lags for Your Time Series}
\format{
A data frame with 1000 observations on the following 4 variables.
\describe{
\item{\code{n}}{an integer corresponding with an assumed length of your time series}
\item{\code{schwert_ub}}{the upper bound lag order suggested by Schwert (1989) for a time series of that length}
\item{\code{schwert_lb}}{the lower bound lag order suggested by Schwert (1989) for a time series of that length}
\item{\code{qiuetal2013}}{the suggested lag order from Qiu et al. (2013)}
\item{\code{sd84}}{the suggested lag order from Said and Dickey (1984)}
}
}
\usage{
lag_suggests
}
\description{
A data frame on various suggestions for lags for your time series, given
the length of your time series. You are not compelled to use these. These
are just suggestions.
}
\details{
The lower bound lag order suggested by Schwert (1989) and the default
suggested by Said and Dickey (1984) do not meaningfully separate from each
other until the length of the series reaches 127. You should think long and
hard about doing any of this if your time series is so finite that it has
fewer than 25 observations.

The Qiu et al. (2013) suggestion is the default lag if you're using
the \pkg{aTSA} package. It is almost equivalent to the Schwert (1989) lower
bound, except the length of the series is raised to 2/9 and not 2/8. The two
do not meaningfully separate until the length of the series reaches 5,720
observations (which is when the difference between two reaches two lags of
separation).
}
\references{
Qiu, D., Q. Shao, and L. Yang. 2013. "Efficient Inference for Autoregressive
Coefficients in the Presence of Trends." \emph{Jounal of Multivariate Analysis}
114: 40--53.

Said, Said E. and David A. Dickey. 1984. "Testing for Unit Roots in
Autoregressive-Moving Average Models of Unknown Order." \emph{Biometrika} 71(3):
599-607.

Schwert, G. William. 1989. "Tests for Unit Roots: A Monte Carlo Investigation".
\emph{Journal of Business & Economic Statistics} 7(2): 147--59.
}
\keyword{datasets}
