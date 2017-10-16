#' Plot the evolution of the numbers of time per year a name was given since 1900
#'
#' @param the_name the name to plot
#' @param the_sex the sex related to the name
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
#' draw_a_name(the_name = "Vincent",the_sex = "M")


draw_a_name <- function(the_name,the_sex){
  assert_that(is.character(the_name))
  assert_that(the_sex %in% c("M","F"))

  prenoms::prenoms %>%
    filter(name == the_name,sex == the_sex) %>%
    group_by(year) %>%
    summarise(n=sum(n,na.rm=TRUE)) %>%
    ggplot(aes(year,n)) + geom_line() +
    ggtitle(paste(the_name)) + ggthemes::theme_gdocs()

}
