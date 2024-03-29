% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/xxx_title.R
\name{xxx_title1}
\alias{xxx_title1}
\alias{xxx_title0}
\alias{xxx_title2}
\alias{xxx_title3}
\title{Insert a title}
\usage{
xxx_title1(mystring = NULL)

xxx_title0(mystring = NULL)

xxx_title2(mystring = NULL)

xxx_title3(mystring = NULL)
}
\arguments{
\item{mystring}{the content of your title, must be one line only, not too long}
}
\value{
A character string vector returned invisibly,
but automatically displayed in the console, the output will be saved into clipboard
}
\description{
For user guide, please refer to \url{https://github.com/Hzhang-ouce/ARTofR}\cr
}
\details{
There are three levels of titles, inserting a title with xxx_title() will also add a section in Rstudio automatically.\cr
Please note that a super long title string will result in an error\cr
xxx_title0() was designed as the main title of the whole script\cr
xxx_title1() is the largest header\cr
xxx_title2() is the middle size header\cr
xxx_title3() is the smallest header\cr
}
\section{Functions}{
\itemize{
\item \code{xxx_title0}: the middle size title

\item \code{xxx_title2}: the middle size title

\item \code{xxx_title3}: the smallest title
}}

\examples{
# COMMON WORKFLOW OF THIS PACKAGE
#
# 1. To insert titles with your own text
# 2. copy the text you want from anywhere
# 3. call xxx_title2() etc without arguments to grab text from clipboard
# 4. decorated text will be displayed and sent to clipboard, NO NEED to copy them
# 5. paste it into your R script
#...............................................
# # SPECIFIC USAGE EXAMPLE:

xxx_title0('my title')
xxx_title1('my title')
xxx_title2('my title')
xxx_title3('my title')

}
