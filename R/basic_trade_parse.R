#' Basic Parser for UK Trade .txt files
#'
#' @param file dest of txt file
#'
#'

#' @export
#' @rdname basic_trade_parse
#'
#' @return the results from the search
#' @examples
#' \dontrun{
#' x <- basic_trade_parse("data-rawBDSexp1601.txt")
#' }
#'
#'

trade_parse <- function(file = NULL) {
  res <- read.delim(file, header = FALSE)
  res <- data.frame(
    perref = substr(res$V1, 1, 6),
    type = substr(res$V1, 7, 7),
    accdate = substr(res$V1, 8, 13),
    comcode = substr(res$V1, 14, 21),
    sitc = substr(res$V1, 22, 26),
    codseq = substr(res$V1, 27, 29),
    coda = substr(res$V1, 30, 31),
    portseq = substr(res$V1, 32, 34),
    porta = substr(res$V1, 35, 37),
    cooseq = substr(res$V1, 38, 40),
    cooa = substr(res$V1, 41, 42),
    transport = substr(res$V1, 43, 44),
    statvalue = substr(res$V1, 45, 56),
    netmass = substr(res$V1, 57, 68),
    suppunit = substr(res$V1, 69, 80),
    supprind = substr(res$V1, 81, 81),
    flow = substr(res$V1, 82, 84),
    rectype = substr(res$V1, 85, 85)
  )
}



