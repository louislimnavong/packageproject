#' import all sheets from an excel file
#'
#' @param file path to xlsx file
#' @import readxl
#' @import assertthat
#' @return a list
#' @export
#'
#' @examples
#' \dontrun{
#' read_excel_multi("../../folder/with/xlsxfile")
#' }

read_excel_multi <- function(file) {
  assert_that(has_extension(file, "xlsx"))
  assert_that(is.dir(dirname(file)))
  assert_that(is.writeable(dirname(file)))


  all_sheets <- readxl::excel_sheets(file)
  result <- lapply(all_sheets, function(sheet) {
    readxl::read_excel(file, sheet = sheet)
  })
  return(result)
}
