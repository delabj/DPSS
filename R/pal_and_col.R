#' Set of colors for the University of Chicago
#'
#' @description
#' Simply a set of hex codes and names for colors I like
#'
#' @usage colors_UChicago[name]
#'
#' @return Named characters of the hex code
colors_UChicago  <- c(
  'maroon'            = '#800000',
  'dark gray'         = '#767676',
  'light gray'        = '#D6D6CE',
  'yellow tint'       = '#FFB547',
  'yellow core'       = '#FFA319',
  'yellow shade'      = '#C68220',
  'orange tint'       = '#D49464',
  'orange core'       = '#C16622',
  'orange shade'      = '#9A5324',
  'red tint'          = '#B1746F',
  'red core'          = '#8F3931',
  'red shade'         = '#642822',
  'light green tint'  = '#ADB17D',
  'light green core'  = '#8A9045',
  'light green shade' = '#616530',
  'dark green tint'   = '#8A8B79',
  'dark green core'   = '#58593F',
  'dark green shade'  = '#3E3E23',
  'blue tint'         = '#5B8FA8',
  'blue core'         = '#155F83',
  'blue shade'        = '#0F425C',
  'violet tint'       = '#725663',
  'violet core'       = '#350E20',
  'cyan'              = '#47B5FF',
  'magenta'           = '#FF3399',
  'black'             = '#000000'

)


#' Retrieve colors from University of Chicago colors
#'
#' @description
#' A function to retrieve a list of colors from the list of named colors in colors_UChicago
#'
#' @usage  get_UChicago_colors(color1, color2)
#'
#' @value ... name of colors in colors_UChicago
#'
#' @returns
#' a set of named characters
#'
#' @examples
#' get_UChicago_colors('maroon', 'dark gray' , 'light gray' )
#' @export
get_UChicago_colors <- function(...){
  cols <- c(...)

  if(is.null(cols))
    return(colors_delabj)

  return(colors_UChicago[cols])
}



#' University of Chicago Color Pallets
#'
#' @description
#' A collection of pallets based on the University of Chicago's style guidlines
#'
#' @usage palettes_UChicago[pallet_name]
palettes_UChicago <- list(
  'primary' = get_UChicago_colors('maroon', 'dark gray', 'light gray'),
  'core'    = get_UChicago_colors('yellow core', 'orange core', 'red core', 'light green core', 'dark green core', 'blue core' , 'violet core'),
  'tint'    = get_UChicago_colors('yellow tint', 'orange tint', 'red tint', 'light green tint', 'dark green tint', 'blue tint' , 'violet tint'),
  'shade'   = get_UChicago_colors('yellow shade', 'orange shade', 'red shade', 'light green shade', 'dark green shade', 'blue shade'),
  'all'     = get_UChicago_colors('maroon',
                                  'yellow core', 'orange core', 'red core', 'light green core', 'dark green core', 'blue core' , 'violet core',
                                  'yellow tint', 'orange tint', 'red tint', 'light green tint', 'dark green tint', 'blue tint' , 'violet tint',
                                  'yellow shade', 'orange shade', 'red shade', 'light green shade', 'dark green shade', 'blue shade')

)

#' Retrieve Delabj color palettes
#'
#' @description
#' Easily retrieve various palettes from the delabj collection.

get_UChicago_palettes <- function(palette = "core", reverse = FALSE, ...) {
  pal <- palettes_UChicago[[palette]]

  if (reverse) pal <- rev(pal)

  colorRampPalette(pal, ...)
}
