% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/create_time_series.R
\name{create_time_series}
\alias{create_time_series}
\title{Create Time Series}
\usage{
create_time_series(
  rasters,
  x = 3.57,
  y = 50.35,
  years,
  start_week = 1,
  end_week = 52
)
}
\arguments{
\item{rasters}{An output from \code{\link[=create_raster_stack]{create_raster_stack()}}}

\item{x}{An x coordinate (longitude)}

\item{y}{A y coordinate (latitude)}

\item{years}{A vector stating for which years the time series will be extracted}

\item{start_week}{A number of first week in the output RasterStack.
The default is 1}

\item{end_week}{A number of last week in the output RasterStack.
The default is 52}
}
\value{
A data.frame with three columns: time, value, variable.
}
\description{
Create Time Series
}
\examples{
\dontrun{
  Path <- "C:/Google Drive/Corvus Geostat - Jakub Nowosad/"
  Path <- "../corvus_dynamic_outputs/"
  input_file <- paste0(Path,"NetCDF/DxResults_Cc_2010-2015.nc")
  AllYears <- extract_data_list(input_file, "Weekly Growth Index",
                              years = 2000:2014)
  rasters <- create_raster_stack(AllYears, years = 2000:2014)

  cts <- create_time_series(rasters,
                          years = 2000:2014,
                          x = 3.57, y = 50.35)

  library(ggplot2)
  ggplot(cts, aes(time, value)) + geom_line()
}
}
