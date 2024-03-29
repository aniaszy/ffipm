
# ffipm

<!-- badges: start -->
<!-- badges: end -->

<!-- The goal of ffipm is to ...-->

## Installation

```
remotes::install_github("nowosad/ffipm")
```

## Main functions

### Model-based

- `extract_data_list()` - extracts selected variable from the model (`.nc`) into a list of matrices
- `create_raster_stack()` - creates a RasterStack based on the result from `extract_data_list()`
- `create_time_series()` - extracts a time series for a given coordinates from the result of `create_raster_stact()`
- `raster_animation()` - creates an animation based on the result of `create_raster_stact()`
- `create_composite_raster()` - create a composite raster stack based on 2 models and a raster mask with values 0 and 1. Values from model 1 will be assigned where mask is 0, and values from model 2 where mask is 1.

### Plot-based

- `read_pd()` - reads `.csv` files created by Plot Digitizer based on the database information from `inst/table/data_summary.ods`
- `trap_plot()` - visualizes the output of `read_pd()`

### Model and plot-based

- `trap_model_plot()` - visualizes the join outputs of `read_pd()` and `create_time_series()`

