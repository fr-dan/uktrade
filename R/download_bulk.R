#' A generalised function for downloading and unzipping ZIP files from the web.
#' In this case used for UK Trade Archive Data
#'
#'
#'
#' @param file dest of txt file
#'
#'
#' @import attempt stop_if_any
#'
#'

#' @export
#' @rdname download_bulk
#'
#' @return the results from the search
#' @examples
#' \dontrun{
#' download_bulk(url = "https://www.uktradeinfo.com/media/jwnmjb0l/exp16.zip", dest = "data-test")
#' }
#'
#'
#'
#'
#'


download_bulk <- function(url = NULL, dest = NULL) {
  args <- list(url = url, dest = dest)
  stop_if_any(args, is.null, "You need to specify both the url for the zipped file and the destination to write to")
  x = getwd()
  download.file(url, destfile = paste0(x, "/", "placeholder"))
  dir.create(paste0(x, "/", dest))
  unzip(paste0(x, "/", "placeholder"), exdir = paste0(x, "/", dest))
  file.remove(paste0(x, "/", "placeholder"))
}

