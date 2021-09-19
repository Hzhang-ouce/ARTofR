
<!-- README.md is generated from README.Rmd. Please edit that file -->

# ARTofR

<!-- badges: start -->
<!-- badges: end -->

ARTofR is to make something like this:

> \#……………………ARTofR line break…………………..

## Installation

You can install the released version of ARTofR from
[GitHub](https://github.com/) with:

``` r
# install.packages("devtools")
devtools::install_github("Hzhang-ouce/ARTofR")
```

## COMMON WORKFLOW OF THIS PACKAGE

1.  type your text in any text editor
2.  copy your text
3.  call xxx\_box() or xxx\_box1() etc in R console
4.  Check the output in console, NO NEED to copy them
5.  paste into your R script

Read
[instruction\_page.pdf](https://github.com/Hzhang-ouce/ARTofR/blob/master/instruction_page.pdf)
for more information

## All functions:

### Title

**This will automatically bring you a navigation panel** **but
xxx\_divider will not** Check Auto navigation in
[instruction\_page.pdf](https://github.com/Hzhang-ouce/ARTofR/blob/master/instruction_page.pdf)
for more information

``` r
  library(ARTofR)
  xxx_title1('ARTofR')
#> 
#> ##~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#> ##~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#> ##                                                                            ~~
#> ##                                   ARTOFR                                 ----
#> ##                                                                            ~~
#> ##~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#> ##~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
##~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
##~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
##                                                                            ~~
##                                   ARTOFR                                 ----
##                                                                            ~~
##~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
##~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~


  xxx_title2('ARTofR')
#> 
#> ##~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#> ##                                    ARTofR                                ----
#> ##~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
##~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
##                                    ARTofR                                ----
##~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~


  xxx_title3('ARTofR')
#> ##~~~~~~~~~~~~~~~~
#> ##  ~ ARTofR  ----
#> ##~~~~~~~~~~~~~~~~
##~~~~~~~~~~~~~~~~
##  ~ ARTofR  ----
##~~~~~~~~~~~~~~~~
```

### line break

``` r
  library(ARTofR)
  xxx_divider1('')
  
     #................................................................

  xxx_divider1('ARTofR')

     #.............................ARTofR.............................

  xxx_divider2('')     
     
     ##~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
     
  xxx_divider2('ARTofR')
     
     #                            ARTofR                            ~~~
     #~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
```

### Paragraph

``` r
   xxx_box1('ARTofRARTofRARTofR')

#...............................................................................
#                                                                              .
#  ARTofRARTofRARTofR                                                          .
#                                                                              .
#...............................................................................


   xxx_box1('ARTofRARTofRARTofR',center = T)
   
#...............................................................................
#                                                                              .
#                              ARTofRARTofRARTofR                              .
#                                                                              .
#...............................................................................
```

**Copy this paragraph:**

I used ARTofR everyday and it makes my R script so neat. I used ARTofR
everyday and it makes my R script so neat. I used ARTofR everyday and it
makes my R script so neat. I recommended this pacakge to all my
families. Yes, even my grandmother like it!

**Then in your R console do:**

``` r
  xxx_box()

#  I used ARTofR everyday and it makes my R script so neat. I used ARTofR       
#  everyday and it makes my R script so neat. I used ARTofR everyday and it     
#  makes my R script so neat.                                                   
#                                                                               
#  I recommended this pacakge to all my families.                               
#                                                                               
#  Yes, even my grandmother like it!                                        


  xxx_box1()
  
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


  xxx_box1(center = T)
  
#...............................................................................
#                                                                              .
#    I used ARTofR everyday and it makes my R script so neat. I used ARTofR    .
#   everyday and it makes my R script so neat. I used ARTofR everyday and it   .
#                          makes my R script so neat.                          .
#                                                                              .
#                I recommended this pacakge to all my families.                .
#                                                                              .
#                      Yes, even my grandmother like it!                       .
#                                                                              .
#...............................................................................
```

### List

**Copy this list:**

> 1.  I used ARTofR everyday
> 2.  I used ARTofR everyday and it makes my R script so neat. I used
>     ARTofR everyday and it makes my R script so neat.
> 3.  I recommended this pacakge to all my families. I recommended this
>     pacakge to all my families.
> 4.  Yes, even my grandmother like it!

``` r
  xxx_list()

#  1. I used ARTofR everyday                                                
#  2. I used ARTofR everyday and it makes my R script so neat. I used ARTofR
#     everyday and it makes my R script so neat.                            
#  3. I recommended this pacakge to all my families. I recommended this     
#     pacakge to all my families.                                           
#  4. Yes, even my grandmother like it!                                     

  xxx_list1()
  
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
```

xxx\_list1(center = T) is not recommended, use xxx\_box(center=T)

## Tips and warnnings:

-   Only Mac and windows were tested with this package.
-   For all functions, you can use, for example, xxx\_divider2(’’) in
    non-interactive mode to insert a break line in your text output
-   Once text was decorated, it would be difficult to restore. It is
    best to save your text in a plain-text file and copy from there, so
    that you can modify in the future.
