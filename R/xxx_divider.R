#' Insert a divider (line break or page break)
#'
#' For user guide, please refer to <https://github.com/Hzhang-ouce/ARTofR>\cr
#'
#'
#' Divider is shorter than title for hierarchy purpose, title will be come a section (for folding) in Rstudio, but divider will not\cr
#' There are two styles of break, xxx_divider1 and xxx_divider2 \cr
#' Please note that a super long divider string will result in an error\cr
#' call \code{xxx_divider1()} will grab text from clipboard,\cr
#' call \code{xxx_divider1('')} will make a line without text, \cr
#' call \code{xxx_divider1('mystring')} will make a divider with 'mystring'
#'
#' @param mystring the content of your break, must be one line only, not too long
#'
#' @return A character string vector returned invisibly,
#' but automatically displayed in the console, the output will be saved into clipboard
#' @export
#'
#' @examples
#' # COMMON WORKFLOW OF THIS PACKAGE
#' # 1. type your text in any text editor
#' # 2. copy your text
#' # 3. call xxx_box() etc without arguments to grab text from clipboard
#' # 4. decorated text will be displayed and sent to clipboard, NO NEED to copy them
#' # 5. paste into your R script
#' #
#' #
#' #...............................................
#' # # OTHER USAGE
#'
#' xxx_divider1('mystring')
#' xxx_divider1('')
#' xxx_divider2('mystring')
#' xxx_divider2('')
xxx_divider1<-function(mystring=NULL){
  if (is.null(mystring)) {
    mystring<-clipr::read_clip(allow_non_interactive = Sys.getenv("CLIPR_ALLOW", interactive()))
    mystring<-mystring[1]
    }
  text <- mystring
  if (length(text) == 0) { text <- ""}
  nt <- 1
  kt <- 1
  n0 <- nchar(text)
  leftHash='#'
  leftSideHashes=nchar(leftHash)
  rightHash=''
  rightSideHashes=nchar(rightHash)
  mid <- character(nt)
  hashes = 65
  blanks <- (hashes - leftSideHashes - rightSideHashes - n0)
  if (blanks<0) {
    stop('you must provide a sentence less than 65 character')
  }
  blanks1 = round(blanks/2)
  blanks2 <- blanks - blanks1
  left <- paste(c('     ',leftHash, rep(".", blanks1)), collapse = "")
  right <- paste(c(rep(".", blanks2), rightHash), collapse = "")
  mid <- paste(left,  text, right, sep = "", collapse = "")
  structure(mid, class = "banner")
  #print.banner2(mid)
}

#' @describeIn xxx_divider1 Same as xxx_divider1 but different style
#'
#' @export
xxx_divider2<-function(mystring=NULL){
  if (is.null(mystring)) {
    mystring<-clipr::read_clip(allow_non_interactive = Sys.getenv("CLIPR_ALLOW", interactive()))
    mystring<-mystring[1]
    }
  if (nchar(mystring)==0) {
    comment<-my_own_banner("",leftSideHashes=1,bandChar = '~',minHashes=65)
    structure(paste0('     ',comment), class = "banner")

  }else{
    a<-my_own_banner(mystring,bandChar = '~',numLines=0,rightSideHashes=3,leftSideHashes=1,minHashes=65)
    b<-my_own_banner("",leftSideHashes=1,bandChar = '~',minHashes=65)
    comment<-paste0('     ',a,'     ',b)
    structure(comment, class = "banner")
  }
}




##~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~




