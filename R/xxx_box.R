
#' Box or list of comments
#'
#' Please refer to the github page <github.com/Hzhang-ouce/ARTofR> for more instructions.\cr
#'
#' xxx_box is for paragraph, xxx_list is for bullet points or numbered list.\cr
#' Number 1 in xxx_box1 and xxx_list1 imply style 1.\cr
#' @param mystring A string, will be a line of comment. If missing, the function will try to grab texts from your clipboard.
#' @param center A logical value: Do you want the text strings centred?
#' (alternative: left justified)
#'
#' @return A character string vector returned invisibly,
#' but automatically displayed in the console, the output will be saved into clipboard
#' @export
#'
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
#' xxx_box('test sentence, test sentence, test sentence, test sentence',center = FALSE )
#' xxx_box1('test sentence, test sentence, test sentence, test sentence',center = FALSE )
#' xxx_box1('test sentence, test sentence, test sentence, test sentence',center = TRUE )

xxx_box<-function(mystring=NULL, center=FALSE){
  if (is.null(mystring)) {
    mystring<-clipr::read_clip(allow_non_interactive = TRUE)

  }


  if (length(mystring)<1) {
    storage<-mystring
    storage2<-strwrap(storage,width=75)
  }else{
    storage2=''
    storage = mystring
    for (i in 1:length(storage)) {
      storage2[i]<-fold_it(storage[i],maxChar = 75)
      storage2[i]<-paste0('',storage2[i],'\n')
    }

  }


  my_own_banner(storage2, leftSideHashes = 1, rightSideHashes = 0, centre = center,numLines = 0)

}


#' @describeIn xxx_box Same as xxx_box but add border
#'
#' @export
xxx_box1<-function(mystring=NULL, center=FALSE){
  if (is.null(mystring)) {
    mystring<-clipr::read_clip(allow_non_interactive = TRUE)
  }


  if (length(mystring)<1) {
    storage<-mystring
    storage2<-strwrap(storage,width=75)
  }else{
    storage2=''
    storage = mystring
    for (i in 1:length(storage)) {
      storage2[i]<-fold_it(storage[i],maxChar=75)
      storage2[i]<-paste0('',storage2[i],'\n')
    }

  }
  storage3<-storage2
  storage3[2:(length(storage2)+1)]<-storage2
  storage3[1]<-' '
  storage3[length(storage2)+2]<-''#storage 3 just to create empty space before and after paragraph
  my_own_banner(storage3, center=center, bandChar = ".",leftSideHashes=1,rightSideHashes=1)
}


#' @describeIn xxx_box Same as xxx_box but looks better for bullet points list or numbered list
#'
#' @export
xxx_list<-function(mystring=NULL, center=FALSE){
  if (is.null(mystring)) {
    mystring<-clipr::read_clip(allow_non_interactive = TRUE)

  }

  if (length(mystring)<1) {
    storage<-mystring
    storage2<-strwrap(storage,width=74)
  }else{
    storage2=''
    storage = mystring

   # storage2<-stringr::str_wrap(storage,indent = 0,width=74,exdent =3) has the same effect as below
     for (i in 1:length(storage)) {
       storage2[i]<-fold_it(storage[i],maxChar=74,exdent =3)
     }

  }
  storage3<-storage2
  storage3[2:(length(storage2)+1)]<-storage2
  storage3[1]<-' '
  storage3[length(storage2)+2]<-' '#storage 3 just to create empty space before and after paragraph
  my_own_banner(storage2, leftSideHashes = 1, rightSideHashes = 0, centre = center,
                minHashes = 0, numLines = 0)

}

#' @describeIn xxx_box Same as xxx_list but add border
#'
#' @export
xxx_list1<-function(mystring=NULL, center=FALSE){
  if (is.null(mystring)) {
    mystring<-clipr::read_clip(allow_non_interactive = TRUE)

  }

  if (length(mystring)<1) {
    storage<-mystring
    storage2<-strwrap(storage,width=74)
  }else{
    storage2=''
    storage = mystring

   # storage2<-stringr::str_wrap(storage,indent = 0,width=74,exdent =3) has the same effect as below

     for (i in 1:length(storage)) {
       storage2[i]<-fold_it(storage[i],maxChar=74,exdent =3)
     }

  }
  storage3<-storage2
  storage3[2:(length(storage2)+1)]<-storage2
  storage3[1]<-' '
  storage3[length(storage2)+2]<-' '#storage 3 just to create empty space before and after paragraph
  my_own_banner(storage3, center=center, bandChar = ".",leftSideHashes=1, rightSideHashes = 1)

}

#...............................................................................
#                                                                              .
#  I used ARTofR everyday and it makes my R script so neat. I used ARTofR      .
#  everyday and it makes my R script so neat. I used ARTofR everyday and it    .
#  makes my R script so neat.                                                  .
#                                                                              .
#  I recommended this pacakge to all my families.                              .
#                                                                              .
#  Yes, even my grandmother like it!                                           .
#                                                                              .
#...............................................................................



#...............................................................................
#                                                                              .
#  1. I used ARTofR everyday                                                   .
#  2. I used ARTofR everyday and it makes my R script so neat. I used ARTofR   .
#     everyday and it makes my R script so neat.                               .
#  3. I recommended this pacakge to all my families. I recommended this        .
#     pacakge to all my families.                                              .
#  4. Yes, even my grandmother like it!                                        .
#                                                                              .
#...............................................................................

