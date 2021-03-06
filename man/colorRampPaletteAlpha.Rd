% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/rampale.R
\name{colorRampPaletteAlpha}
\alias{colorRampAlpha}
\alias{colorRampPaletteAlpha}
\title{Color interpolation}
\usage{
colorRampPaletteAlpha(colors, ...)

colorRampAlpha(colors, bias = 1, interpolate = c("linear", "spline"))
}
\arguments{
\item{colors}{colors to interpolate; must be a valid argument to \code{\link{col2rgb}()}.}

\item{...}{arguments to pass to \code{\link[grDevices]{colorRamp}}.}

\item{bias}{a positive number.  Higher values give more widely spaced
colors at the high end.}

\item{interpolate}{use spline or linear interpolation}
}
\value{
Both functions return a function which takes an integer argument.
For details, see description of \code{\link[grDevices]{colorRampPalette}}
}
\description{
These functions are replacements for colorRamp and colorRampPalette from the
package grDevices, the only difference being that they also interpolate the
alpha channel (i.e. transparency).
}
\details{
These functions are replacements for \code{\link[grDevices]{colorRamp}} and \code{\link[grDevices]{colorRampPalette}} from the
package grDevices. There are two differences: (i) these functions also interpolate the
alpha channel (i.e. transparency) and (ii) there is no \code{space}
parameter (only \code{rgb} space is allowed).
For all the other details, see descriptions of the original package.
}
\examples{
colorRampPaletteAlpha( c( "#FF000033", "#00FF0099" ) )( 5 )
}

