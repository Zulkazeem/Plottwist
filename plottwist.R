#' Custom ggplot2 Theme: plottwist
#'
#' @param title Title of the plot
#' @param subtitle Subtitle of the plot
#' @param x_label Label for x-axis
#' @param y_label Label for y-axis
#' @param axis_text_size Size of axis text
#' @param title_size Size of title text
#' @param subtitle_size Size of subtitle text
#' @param axis_text_angle Angle of axis text
#' @param axis_line_color Color of axis lines
#' @param axis_line_width Width of axis lines
#' @param len_linewidth Width of legend box line
#' @param title_family Font family for title
#' @param text_family Font family for text
#' @param len_pos Position of legend
#' @param caption Caption text
#'
#' @return A list of ggplot2 theme elements
#' @export
#'
#' @import ggplot2


plottwist <- function(title = NULL, subtitle = NULL,
                      x_label = NULL, y_label = NULL,
                      axis_text_size = 12,
                      title_size = 16,
                      subtitle_size = 12,
                      axis_text_angle = 45,
                      axis_line_color = "#8FC0A9",
                      axis_line_width = 0.8,
                      len_linewidth = 1,
                      title_family = "playfair",
                      text_family = "bellota",
                      len_pos = "bottom",
                      caption = "Caption") {
  list(
    theme_classic(),
    theme(
      plot.title = element_text(size = title_size, family = title_family),
      plot.caption = element_text(size = axis_text_size),
      plot.tag = element_text(size = axis_text_size),
      axis.text.x = element_text(size = axis_text_size, angle = axis_text_angle, hjust = 1,
                                 family = text_family, color = "black",
                                 margin = margin(t = 5, b = 5)),
      axis.text.y = element_text(size = axis_text_size, angle = axis_text_angle, family = text_family,
                                 color = "black", hjust = 0.5,
                                 margin = margin(r = 5, l = 5)),
      axis.line.x = element_line(colour = axis_line_color, linewidth = axis_line_width),
      axis.line.y = element_line(colour = axis_line_color, linewidth = axis_line_width),
      panel.grid.major = element_blank(),
      panel.grid.minor = element_blank(),
      plot.background = element_rect(fill = "white", color = NA),
      panel.background = element_rect(fill = "white"),
      plot.subtitle = element_text(size = subtitle_size, title_family),
      aspect.ratio = 1,
      legend.box.background = element_rect(linewidth = 2,
                                           linetype = 1,
                                           color = axis_line_color),
      legend.background = element_rect(fill = "white", color = NA),
      legend.text = element_text(text_family,
                                 size = subtitle_size),
      legend.title = element_text(title_family,
                                  size = title_size),
      legend.position = len_pos,
      panel.border = element_rect(color = axis_line_color, fill = NA,
                                  linewidth = axis_line_width + 0.8)
    ),

    labs(title = title, subtitle = subtitle, x = x_label,
         y = y_label, caption = caption)
  )
}
