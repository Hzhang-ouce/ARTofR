#' Core functions for comment making
#'
#' This is modified from \code{bannerCommenter::banner()}, the main modification is to extend the comment length (minHashes) to 80
#'
#' @param x A string, first line of the comment. If
#' \code{""}, the zero-length string, only the top lines of the banner are made.
#' If missing, in an interactive session the user will be prompted for the input
#' strings, one per line, in the console.
#' @param ... Zero or more additional strings as extra lines.  Strings may contain
#' newline characters resulting in further line breaks.
#' @param emph A logical value: Do you want this to be an emphasised comment?
#' @param snug A logical value: Do you want the decoration to hug the strings closely?
#' @param upper A logical value: Do you want the strings converted to upper case?
#' @param centre A logical value: Do you want the text strings centred?
#' (alternative: left justified)
#' @param leftSideHashes A positive integer: How many hashes go on the left side?
#' @param rightSideHashes A non-negative integer: How many hashes go on the right side?
#' @param minHashes A non-negative integer: What is the minimum number of hashes
#'  in the boundary lines?
#' @param numLines A non-negative integer: How many lines of hashes above
#' and below do you want?
#' @param bandChar A single character.  Used instead of # for all characters in
#' the bands around the text, apart from the first character of every line.
#' @param center Alternative spelling of \code{centre}.
#' @param fold Logical: should the text be folded to ensure lines are not too long?
#' @param maxChar Ingeter: maximum length allowed in any line if \code{fold} is \code{TRUE}.
#' @import bannerCommenter
#'
#' @return A character string vector returned invisibly,
#' but automatically displayed in the console
#' @export
#'
#' @examples
#' my_own_banner("This should appear clearly and stand out.",
#'        "The lines are left justified by default.")
#' ##This is NOT recommended!!!
#' ##This is NOT recommended!!!
#' ##This is NOT recommended!!!
#' ##pls use bannerCommenter::banner()
my_own_banner<-function (x, ..., emph = FALSE, snug = FALSE, upper = emph,
                         centre = !fold, leftSideHashes = 2 + emph, rightSideHashes = leftSideHashes,
                         minHashes = (!snug) * (80 + 10 * emph), numLines = 1 + emph,
                         bandChar = "#", center = centre, fold = FALSE, maxChar = 75)
{
  if (missing(x)) {
    x <- if (interactive()) {
      paste(scan(what = "", sep = "\n", quiet = TRUE),
            collapse = "\n")
    }
    else ""
  }
  if (fold) {
    text <- gsub("\n", " ", paste(as.character(unlist(list(x,
                                                           ...))), collapse = " "))
    if (nchar(text) > maxChar) {
      txt <- character()
      repeat {
        if (nchar(text) <= maxChar)
          break
        pos <- gregexpr(" ", text)[[1]]
        if (any(pos < 0) || !any(pos <= maxChar))
          break
        pos <- max(pos[pos <= maxChar])
        txt <- c(txt, substring(text, 0, pos))
        text <- substring(text, pos + 1, nchar(text))
      }
      text <- paste(sub("^ +", "", sub(" +$", "", c(txt,
                                                    text))), collapse = "\n")
    }
  }
  else {
    text <- paste(as.character(unlist(list(x, ...))), collapse = "\n")
  }
  text <- strsplit(text, "\n")[[1]]
  if (length(text) == 0)
    text <- ""
  nt <- length(text)
  kt <- seq_len(nt)
  n0 <- max(sapply(text, nchar))
  hashes <- max(n0 + leftSideHashes + rightSideHashes + 2,
                minHashes)
  #hashes <- hashes + ((n0%%2) != (hashes%%2))
  bandChar <- substring(paste0(as.character(bandChar), " "),
                        0, 1)
  line <- paste(c(rep("#", leftSideHashes), rep(bandChar,
                                                hashes - leftSideHashes), "\n"), collapse = "")
  leftHash <- paste(rep("#", leftSideHashes), collapse = "")
  rightHash <- paste(c(rep(bandChar, rightSideHashes), "\n"),
                     collapse = "")
  if (nt == 1 && n0 == 0)
    return(structure(c("\n", rep(line, 1 + emph), "\n"),
                     class = "banner"))
  if (missing(centre) & !missing(center))
    centre <- center
  mid <- character(nt)
  for (k in kt) {
    blanks <- (hashes - leftSideHashes - rightSideHashes -
                 nchar(text[[k]]))
    blanks1 <- ifelse(centre, round(blanks/2), 2)
    blanks2 <- blanks - blanks1
    left <- paste(c(leftHash, rep(" ", blanks1)), collapse = "")
    right <- paste(c(rep(" ", blanks2), rightHash), collapse = "")
    mid[k] <- paste(left, ifelse(upper, toupper(text[[k]]),
                                 text[[k]]), right, sep = "", collapse = "")
  }
  blanks <- rep(" ", hashes - leftSideHashes - rightSideHashes)
  gap <- paste(c(leftHash, blanks, rightHash), collapse = "")
  comment <- c("\n", rep(line, numLines), rep(gap, max(0,
                                                       numLines - 1)), mid, rep(gap, max(0, numLines - 1)),
               rep(line, numLines), "\n")
  structure(comment, class = "banner")
  #invisible(comment)

}


#' @describeIn my_own_banner sub-function to fold sentence, don't use this in other circumstance
#' @param x the string
#' @param maxChar same as width in str_wrap
#' @param exdent for xxx_list()
#'
#' @return


fold_it<-function(x,maxChar,exdent = 0){
    text <- gsub("\n", " ", paste(as.character(unlist(list(x))), collapse = " "))
    if (nchar(text) > maxChar) {
      txt <- character()
      repeat {
        if (nchar(text) <= maxChar)
          break
        pos <- gregexpr(" ", text)[[1]]
        if (any(pos < 0) || !any(pos <= maxChar))
          break
        pos <- max(pos[pos <= maxChar])
        txt <- c(txt, substring(text, 0, pos))
        text <- substring(text, pos + 1, nchar(text))
      }
      exdent_blank=paste0(rep(" ",exdent),collapse = '')
      extend_part=paste0("\n",exdent_blank,collapse = '')
      text <- paste(sub("^ +", "", sub(" +$", "", c(txt,
        text))), collapse = extend_part )
    }
    return(text)
    }


# print.banner2 <- function(x, ...) {
#   y <- unlist(strsplit(x, "\n"))
#   #copy_to_clipboard(y, sep = "\n")
#   utils::writeClipboard(y,format=13)
#   cat(y, sep = "\n")
#   invisible(x)
# }


.onLoad <- function(libname, pkgname){
  requireNamespace('bannerCommenter')
}
