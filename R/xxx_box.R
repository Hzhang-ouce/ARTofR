
#' box or list of comments
#' xxx_box is for paragraph, xxx_list is for bullet points or numbered list
#' xxx_box1 and xxx_list1 imply style 1.
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
#' # 3. call xxx_box() or xxx_box1() etc
#' # 4. Check the output in console, NO NEED to copy them
#' # 4. paste into your R script
#' #
#' #
#' #...............................................
#' #' # COMMON USAGE
#' #xxx_box1()
#' #xxx_box1(center = T)
#' #xxx_box1('test sentence',center = T)

xxx_box<-function(mystring=NULL, center=F){
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
      storage2[i]<-stringr::str_wrap(storage[i],width=75)
      storage2[i]<-paste0('',storage2[i],'\n')
    }

  }


  my_own_banner(storage2, leftSideHashes = 1, rightSideHashes = 0, centre = center,numLines = 0)

}


#' @describeIn xxx_box Same as xxx_box but add border
#'
#' @export
xxx_box1<-function(mystring=NULL, center=F){
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
      storage2[i]<-stringr::str_wrap(storage[i],width=75)
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
xxx_list<-function(mystring=NULL, center=F){
  if (is.null(mystring)) {
    mystring<-clipr::read_clip(allow_non_interactive = TRUE)

  }

  if (length(mystring)<1) {
    storage<-mystring
    storage2<-strwrap(storage,width=74)
  }else{
    storage2=''
    storage = mystring

    storage2<-stringr::str_wrap(storage,indent = 0,width=74,exdent =3)
    # for (i in 1:length(storage2)) {
    #   storage2[i]<-paste0(storage2[i],'\n')
    # }

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
xxx_list1<-function(mystring=NULL, center=F){
  if (is.null(mystring)) {
    mystring<-clipr::read_clip(allow_non_interactive = TRUE)

  }

  if (length(mystring)<1) {
    storage<-mystring
    storage2<-strwrap(storage,width=74)
  }else{
    storage2=''
    storage = mystring

    storage2<-stringr::str_wrap(storage,indent = 0,width=74,exdent =3)
    # for (i in 1:length(storage2)) {
    #   storage2[i]<-paste0(storage2[i],'\n')
    # }

  }
  storage3<-storage2
  storage3[2:(length(storage2)+1)]<-storage2
  storage3[1]<-' '
  storage3[length(storage2)+2]<-' '#storage 3 just to create empty space before and after paragraph
  my_own_banner(storage3, center=center, bandChar = ".",leftSideHashes=1, rightSideHashes = 1)

}



#  'data.frame': 480 obs. of 11 variables:
#
#  $ plot_code : Factor w/ 1 level "ABC-01": 1 1 1 1 1 1 1 1 1 1 ...
#
#  $ year : num 2018 2018 2018 2018 2018 ...
#
#  $ month : num 12 12 12 12 12 12 12 12 12 12 ...
#
#  $ sub_plot : Factor w/ 4 levels "1","2","3","4": 1 1 1 1 1 1 1 1 1 1 ...
#
#  $ Treatment_code: Factor w/ 2 levels "caged","open": 1 1 1 1 1 2 2 2 2
#  2 ...
#
#  $ quadrat_num : Factor w/ 30 levels "A1","A2","A3",..: 1 2 3 4 5 6 7 8 9
#  10 ...
#
#  $ Plants_type : Factor w/ 4 levels "grass","grass ",..: 1 1 1 1 1 1 1 1 1
#  1 ...
#
#  $ dry_mass_g : num 32.1 95 30.5 55.4 32.8 ...
#
#  $ note : chr "" "" "" "" ...
#
#  $ is_stock : Factor w/ 2 levels "N","Y": 2 2 2 2 2 2 2 2 2 2 ...
#
#  $ day : num 15 15 15 15 15 15 15 15 15 15 ...
