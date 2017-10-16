#' import multiple csv files
#'
#' @param path path to the folder
#' @import assertthat
#'
#' @return a list
#' @export
#' @importFrom utils read.csv2
#'
#' @examples
#' \dontrun{
#' my_csv_reader("../../path/to/folder")
#' }

my_csv_reader <- function(path){
  assert_that(is.dir(dirname(path)))
  assert_that(is.writeable(dirname(path)))
  assert_that(is.readable(dirname(path)))
  files <- list.files(path, pattern = "*.csv$", full.names = TRUE )
  result <- lapply(files,read.csv)
  return(result)
}
