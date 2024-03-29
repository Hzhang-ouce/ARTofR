% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/xxx_box.R
\name{xxx_box}
\alias{xxx_box}
\alias{xxx_box1}
\alias{xxx_list}
\alias{xxx_list1}
\title{Convert sentences into a box of comments}
\usage{
xxx_box(mystring = NULL, center = FALSE)

xxx_box1(mystring = NULL, center = FALSE)

xxx_list(mystring = NULL, center = FALSE)

xxx_list1(mystring = NULL, center = FALSE)
}
\arguments{
\item{mystring}{A string, will be a line of comment. If missing, the function will try to grab texts from your clipboard.}

\item{center}{A logical value: Do you want the text strings centred?
(alternative: left justified)}
}
\value{
A character string vector returned invisibly,
but automatically displayed in the console, the output will be saved into clipboard
}
\description{
For user guide, please refer to \url{https://github.com/Hzhang-ouce/ARTofR}\cr
}
\details{
xxx_box is for paragraph, xxx_list is for bullet points or numbered list.\cr
Number 1 in xxx_box1 and xxx_list1 imply style 1.\cr
}
\section{Functions}{
\itemize{
\item \code{xxx_box1}: Same as xxx_box but add border

\item \code{xxx_list}: Same as xxx_box but looks better for bullet points list or numbered list

\item \code{xxx_list1}: Same as xxx_list but add border
}}

\examples{
# COMMON WORKFLOW OF THIS PACKAGE
#
# 1. To insert a box of comments etc with your own text
# 2. copy the text you want from anywhere
# 3. call xxx_box1() etc without arguments to grab text from clipboard
# 4. decorated text will be displayed and sent to clipboard, NO NEED to copy them
# 5. paste it into your R script
#...............................................
# # SPECIFIC USAGE EXAMPLE:

xxx_box('test sentence, test sentence, test sentence, test sentence',center = FALSE )
xxx_box1('test sentence, test sentence, test sentence, test sentence',center = FALSE )
xxx_box1('test sentence, test sentence, test sentence, test sentence',center = TRUE )
}
