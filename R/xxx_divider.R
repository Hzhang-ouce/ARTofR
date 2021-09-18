#' Insert a divider (line break or page break)
#'
#' Divider is shorter than title for hierarchy purpose\cr
#' There are two styles of break, xxx_divider1 and xxx_divider2 \cr
#'
#' call \code{xxx_divider1()} will grab text from clipboard,\cr
#' call \code{xxx_divider1('')} will make a line without text, \cr
#' call \code{xxx_divider1('mystring')} will make a divider with 'mystring'
#'
#' @param mystring the content of your break, must be one line only, not too long
#'
#' @return
#' @export
#'
#' @examples
#' #' # COMMON WORKFLOW OF THIS PACKAGE
#' # 1. type your text in any text editor
#' # 2. copy your text
#' # 3. call xxx_box() or xxx_box1() etc
#' # 4. Check the output in console, NO NEED to copy them
#' # 4. paste into your R script
#' #
#' #
#' #' # COMMON USAGE
#' #  xxx_divider1()
#' #  This will grab text from clipboard
#' #  xxx_divider1('')
#' #...........................................
#' #  xxx_divider1('XXXXX')
#' #...............XXXXX.......................
#' # pls note that you must provide a sentence less than 65 character
#' # call xxx_divider1() will grab text from clipboard,
#' # call xxx_divider1('') will make a line without text,
#' # call xxx_divider1('mystring') will make a divider with 'mystring'
xxx_divider2<-function(mystring=NULL){
  if (is.null(mystring)) {
    mystring<-clipr::read_clip(allow_non_interactive = Sys.getenv("CLIPR_ALLOW", interactive()))
    mystring<-mystring[1]
    }
  if (nchar(mystring)==0) {
    bannerCommenter::boxup("",bandChar = '~')
  }else{
    a<-bannerCommenter::banner(mystring,bandChar = '~',numLines=0,rightSideHashes=3,leftSideHashes=1)
    b<-bannerCommenter::boxup("",leftSideHashes=1,bandChar = '~')
    comment<-paste0(a,b)
    structure(comment, class = "banner")
  }
}

#' @describeIn xxx_divider2 Same as xxx_divider2 but different style
#'
#' @export
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

#................................................................

##~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~


