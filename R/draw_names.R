#' Plot a graph comparing the evolutions of the frequency of two given names
#'
#' @param names the two names to compare
#'
#' @import ggplot2
#' @import dplyr
#' @import dygraphs
#' @import tidyr
#' @import assertthat
#'
#' @return a plot
#' @export
#'
#' @examples
#' draw_names(c("Diane","Vincent"))

draw_names <- function(names){
  assert_that(is.character(names))

  prenoms::prenoms %>%
    group_by(year,name) %>%
    summarise(total = sum(n))    %>%

    filter(name %in% names) %>%
    ggplot(aes(year,total,color=name))+geom_line() +
    # ggtitle(paste(names,collapse = ";"))+
    ggthemes::theme_gdocs()

}
