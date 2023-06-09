% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/spectrum.R
\name{autoplot.SpectralDensityView}
\alias{autoplot.SpectralDensityView}
\title{Autoplot a SpectralDensityView S3 object}
\usage{
\method{autoplot}{SpectralDensityView}(object, period_range = c(0, 10), colour = "blue", ...)
}
\arguments{
\item{object}{\code{SpectralDensityView} object.}

\item{period_range}{tuple for limiting range of periods.}

\item{colour}{name of line colour.}

\item{...}{ignored.}
}
\value{
a \code{ggplot} object.
}
\description{
Autoplot a SpectralDensityView S3 object
}
\examples{
r <- get_sample_recording()
rv <- get_raw_view(r, "Central", "", "Sitar")
pv <- get_processed_view(rv)
sd1 <- spectral_density(pv, columns = c("LElbow_x", "LEye_x"), spans = 5)
autoplot(sd1)

fv <- apply_filter_sgolay(pv, data_points = c("LElbow", "LEye"), n = 19, p = 4)
sd2 <- spectral_density(fv, data_points = c("LElbow", "LEye"), spans = c(3, 3))
autoplot(sd2)
}
