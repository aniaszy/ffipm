% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/create_raster_stack.R
\name{create_raster_stack}
\alias{create_raster_stack}
\title{Create Raster Stack}
\usage{
create_raster_stack(
  allyears,
  years,
  start_week = 1,
  end_week = 52,
  step = "Step"
)
}
\arguments{
\item{allyears}{An output from \code{\link[=extract_data_list]{extract_data_list()}}}

\item{years}{A vector stating for which years the RasterStack should be created}

\item{start_week}{A number of first week in the output RasterStack.
The default is 1}

\item{end_week}{A number of last week in the output RasterStack.
The default is 52}

\item{step}{"Step" for weekly data or "Year" for yearly data}
}
\value{
A RasterStack with some metadata
}
\description{
Create Raster Stack
}
\examples{
\dontrun{
  Path <- "C:/Google Drive/Corvus Geostat - Jakub Nowosad/"
  Path <- "../corvus_dynamic_outputs/"
  input_file <- paste0(Path,"NetCDF/DxResults_Cc_2010-2015.nc")
  AllYears <- extract_data_list(input_file, "Weekly Growth Index",
                              years = 2000:2014)
  rasters <- create_raster_stack(AllYears, years = 2000:2014)
}
}
