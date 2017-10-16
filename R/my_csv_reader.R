my_csv_reader <- function(path="/Users/louislimnavong/Desktop/MSc Data Science for Business/X/MAP536 - R/X_2017/Jour 1/data"){
  files <- list.files(path, pattern = "*.csv$", full.names = TRUE )
  result <- lapply(files,read.csv)
  return(result)
}
my_csv_reader()
```
