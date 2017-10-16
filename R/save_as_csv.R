#' Save a data set as a csv file
#'
#' @param dataset dataset to save as csv
#' @param filename filename to save under
#' @param row.names
#' @param ... other potential variables
#'
#' @import assertthat
#' @import forcats
#' @import dplyr
#'
#' @return csv file
#' @export
#'
#' @examples

save_as_csv <- function(dataset, filename, row.names = FALSE, ...) {
  assert_that(has_extension(filename, "csv"))
  assert_that(is.dir(dirname(filename)))
  assert_that(is.writeable(dirname(filename)))
  assert_that(not_empty(dataset))
  assert_that(is.data.frame(dataset))

  write.csv2(x = dataset, file = filename, row.names = row.names,...)

  invisible(normalizePath(filename)) # instead of return

}

