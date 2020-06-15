#' Change color to one of based on the University of Chicago's palettes
#'
#' @description Custom color scale to use the delabj palettes.
#' @usage scale_color_UChicago(palette="main", reverse=FALSE, ...)
#'
#' @param palette Name of the palette ("core", "shade", "tint")
#' @param reverse Boolean: should the palette be reversed
scale_color_UChicago <- function(palette = 'core', discrete= TRUE, reverse = FALSE, ...){
  pal <- get_UChicago_palettes(palette = palette, reverse = reverse)

  if (discrete) {
    ggplot2::discrete_scale("colour", paste0("UChicago", palette), palette = pal, ...)
  } else {
    ggplot2::scale_color_gradientn(colours = pal(256), ...)
  }
}

#' Change fill to one of based on the University of Chicago's palettes
#'
#' @description Custom color scale to use the delabj palettes.
#' @usage scale_fill_UChicago(palette="main", reverse=  F, ...)
#'
#' @param palette Name of the palette ("core", "shade", "tint")
#' @param reverse Boolean: should the palette be reversed
scale_fill_UChicago <- function(palette = 'core', discrete= TRUE, reverse = FALSE, ...){
  pal <- get_UChicago_palettes(palette = palette, reverse = reverse)

  if (discrete) {
    ggplot2::discrete_scale("fill", paste0("UChicago", palette), palette = pal, ...)
  } else {
    ggplot2::scale_color_gradientn(colours = pal(256), ...)
  }
}

