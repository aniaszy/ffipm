% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/trap_model_plot.R
\name{trap_model_plot}
\alias{trap_model_plot}
\title{Trap Model Plot}
\usage{
trap_model_plot(x, rasters, full_year = FALSE)
}
\arguments{
\item{x}{An output from \code{\link[=read_pd]{read_pd()}}}

\item{rasters}{An output from \code{\link[=create_raster_stack]{create_raster_stack()}}}

\item{full_year}{Should we use observation for the whole year (TRUE) or just for the dates from x (FALSE). The default is FALSE.}
}
\value{
A ggplot object
}
\description{
Trap Model Plot
}
\examples{
\dontrun{
  Path <- "C:/Google Drive/Corvus Geostat - Jakub Nowosad/"
  Path <- "../corvus_dynamic_outputs/"
  input_file <- paste0(Path,"NetCDF/DxResults_Cc_2010-2015.nc")
  AllYears <- extract_data_list(input_file, "Weekly Growth Index",
                              years = 2000:2014)
  rasters <- create_raster_stack(AllYears, years = 2000:2014)

  maindir <- "../corvus_dynamic_outputs/Digitising FF trapping plots/"
  filename <- "Bjelis_2007_1"; species <- "Cc"
  x <- read_pd(filename, species, maindir)

  trap_model_plot(x, rasters)
}
}
