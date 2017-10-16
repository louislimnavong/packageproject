#' import multiple csv files
#'
#' @param path path to the folder
#'
#' @return a list
#' @export
#' @importFrom utils read.csv2
#'
#' @examples
#'
#' my_csv_reader("../../path/to/folder")

my_csv_reader <- function(path){
  files <- list.files(path, pattern = "*.csv$", full.names = TRUE )
  result <- lapply(files,read.csv)
  return(result)
}
