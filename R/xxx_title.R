
#' Insert a title
#'
#' For user guide, please refer to <https://github.com/Hzhang-ouce/ARTofR>\cr
#'
#' There are three levels of titles, inserting a title with xxx_title() will also add a section in Rstudio automatically.\cr
#' Please note that a super long title string will result in an error\cr
#' xxx_title0() was designed as the main title of the whole script\cr
#' xxx_title1() is the largest header\cr
#' xxx_title2() is the middle size header\cr
#' xxx_title3() is the smallest header\cr
#'
#' @param mystring the content of your title, must be one line only, not too long
#'
#' @return A character string vector returned invisibly,
#' but automatically displayed in the console, the output will be saved into clipboard
#' @export
#'
#' @examples
#' # COMMON WORKFLOW OF THIS PACKAGE
#' #
#' # 1. To insert titles with your own text
#' # 2. copy the text you want from anywhere
#' # 3. call xxx_title2() etc without arguments to grab text from clipboard
#' # 4. decorated text will be displayed and sent to clipboard, NO NEED to copy them
#' # 5. paste it into your R script
#' #...............................................
#' # # SPECIFIC USAGE EXAMPLE:
#'
#' xxx_title0('my title')
#' xxx_title1('my title')
#' xxx_title2('my title')
#' xxx_title3('my title')
#'
xxx_title1<-function(mystring=NULL){
  if (is.null(mystring)) {
    mystring<-clipr::read_clip(allow_non_interactive = Sys.getenv("CLIPR_ALLOW", interactive()))
  }
  my_out_string<-my_own_banner(mystring, numLines = 2,upper=T, bandChar='~')
  my_out_string<-my_out_string[-3]
  my_out_string<-my_out_string[-7]
  my_out_string[4]<-gsub(" (?= )", '-', my_out_string[4],perl = TRUE)
  my_out_string[4]<-gsub('.{5}$', '----\n', my_out_string[4])
  my_out_string[3]<-gsub('.{3}$', '--\n', my_out_string[3])
  my_out_string[5]<-gsub('.{3}$', '--\n', my_out_string[5])

  structure(my_out_string, class = "banner")
  #print.banner(my_out_string)
}

#' @describeIn xxx_title1 the middle size title
#'
#' @export
xxx_title0<-function(mystring=NULL){
   if (is.null(mystring)) {
    mystring<-clipr::read_clip(allow_non_interactive = Sys.getenv("CLIPR_ALLOW", interactive()))
  }
  my_out_string<-my_own_banner(mystring, numLines = 2,upper=T, bandChar='~')
  my_out_string[5]<-gsub('.{5}$', '', my_out_string[5])
  my_out_string[5]<-paste0(my_out_string[5],'----\n')
  structure(my_out_string, class = "banner")
  #print.banner(my_out_string)
}

#' @describeIn xxx_title1 the middle size title
#'
#' @export
xxx_title2<-function(mystring=NULL){
  if (is.null(mystring)) {
    mystring<-clipr::read_clip(allow_non_interactive = Sys.getenv("CLIPR_ALLOW", interactive()))
  }
  my_out_string<-my_own_banner(mystring,bandChar = '~', rightSideHashes = 2)
  my_out_string<-gsub('.{5}$', '', my_out_string)
  my_out_string[2]<-paste0(my_out_string[2],'~~~~\n')
  my_out_string[3]<-paste0(my_out_string[3],'----\n')
  my_out_string[4]<-paste0(my_out_string[4],'~~~~\n')
  structure(my_out_string, class = "banner")

  #print.banner2(my_out_string)
}

#' @describeIn xxx_title1 the smallest title
#'
#' @export
xxx_title3<-function(mystring=NULL){
  if (is.null(mystring)) {
    mystring<-clipr::read_clip(allow_non_interactive = Sys.getenv("CLIPR_ALLOW", interactive()))
  }
  mystring<-paste0('~ ',mystring,'  ')
  my_out_string<-my_own_banner(mystring,bandChar = '~',snug=T,minHashes = 0, rightSideHashes = 0, centre = FALSE)
  my_out_string<-gsub('.{1}$', '', my_out_string)
  my_out_string[2]<-paste0(my_out_string[2],'~~~~\n')
  my_out_string[3]<-paste0(my_out_string[3],'----\n')
  my_out_string[4]<-paste0(my_out_string[4],'~~~~\n')
  structure(my_out_string, class = "banner")
  #print.banner2(my_out_string)
}


##~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
##                                                                            --
##...................................ARTOFR.................................----
##                                                                            --
##~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~




##~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
##                                     XXX                                  ----
##~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~


##~~~~~~~~~~~~
##  ~ XX  ----
##~~~~~~~~~~~~
