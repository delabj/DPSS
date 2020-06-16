theme_UChicago <- function (
  font = "Arial" ,
  main.text.color         = get_UChicago_colors("black"),
  sub.text.color          = get_UChicago_colors("dark gray"),
  base.size = 15,
  plot.background.color   = "#FFFFFF",
  legend.position         = "bottom",
  panel.border.color      = "#FFFFFF",
  panel.background        = "#FFFFFF",
  panel.grid.color        = get_UChicago_colors("light gray"),
  panel.grid.minor.color  = "#FFFFFF",
  axis.text.color         = get_UChicago_colors("black"),
  axis.text.size  = base.size * 0.6666667,
  subtitle.size   = base.size * 0.8,
  legend.text     = base.size * 0.8,
  legend.title    = base.size * 0.85,
  axis.title.size = base.size * 0.8,
  title.size      = base.size
) {

  th <- ggplot2::theme_minimal ()

  #Text format:
  th$plot.title=ggplot2::element_text(family=font,
                                      size=title.size,
                                      face="bold",
                                      color=main.text.color,
                                      hjust = 0,
                                      margin = ggplot2::margin(6,0,5,0))
  th$plot.title.position = "plot"
  th$plot.subtitle=ggplot2::element_text(family=font,
                                         size=subtitle.size,
                                         color=sub.text.color,
                                         hjust = 0,
                                         margin=ggplot2::margin(0,0,6,0))
  #Legend format
  th$legend.position = legend.position
  th$legend.text.align=0
  th$legend.background=ggplot2::element_blank()
  th$legend.key=ggplot2::element_blank()
  th$legend.text=ggplot2::element_text(family=font,
                                       size=legend.text,
                                       color=main.text.color)
  th$legend.title=ggplot2::element_text(family=font,
                                        size=legend.title,
                                        color=main.text.color)

  #Axis format
  th$axis.title.x=ggplot2::element_text(family=font,
                                        size=axis.title.size,
                                        color=main.text.color)
  th$axis.title.y=ggplot2::element_text(family=font,
                                        size=axis.title.size,
                                        color=main.text.color,
                                        angle = 90)

  th$axis.text=ggplot2::element_text(family=font,
                                     size=axis.text.size,
                                     color=main.text.color)

  th$axis.text.x = ggplot2::element_text(margin=ggplot2::margin(5, b=10))
  th$axis.text.y = ggplot2::element_text(margin=ggplot2::margin(l = 10))
  th$axis.ticks  = ggplot2::element_blank()
  th$axis.line   = ggplot2::element_blank()

  #Grid lines
  th$panel.grid.minor = ggplot2::element_line(linetype=1, color=panel.grid.minor.color, size=0.05)
  th$panel.grid       = ggplot2::element_line(linetype=1, color=panel.grid.color, size=0.2)

  #Blank background
  th$panel.background = ggplot2::element_rect(
    fill=panel.background,
    colour = NA
  )
  th$plot.background = ggplot2::element_rect(
    fill = plot.background.color,
    colour = NA
  )
  th$panel.border = ggplot2::element_rect(
    color = panel.border.color,
    fill = NA,
    linetype = "solid",
    size = 0.75
  )
  th$plot.caption = ggplot2::element_text(color=main.text.color)

  #Strip background (#This sets the panel background for facet-wrapped plots to white, removing the standard grey ggplot background colour and sets the title size of the facet-wrap title to font size 22)
  th$strip.background = ggplot2::element_blank()
  th$strip.text= ggplot2::element_text(colour = main.text.color,
                                       size  = 12,
                                       hjust = 0.5)
  return (th)
}
#plot+ggplot2::aes(fill=as.factor(cyl))+theme_UChicago()+scale_fill_UChicago()+ggplot2::facet_wrap(~gear)

