# Hzhang 22/10/2021, V0.4.1

## Test environments
* local check() - all passed
* check_rhub() and check_win_devel() - passed with minor notes, already fixed

## Updates
* Put a user interface as Rstudio addins
* The addins basically help to composite commands and send ARTofR commands to console 


#......................Previous submission.......................

# Hzhang 22/10/2021, V0.3.3

## Test environments
* local check() - all passed
* travis-ci - all passed 

## Updates
* fix the title2 and title 1 centre problem, now they are perfectly centered
* add xxx_title0 new style

# Hzhang 03/10/2021, V0.2.3

## Test environments
* local check() - all passed
* travis-ci - all passed 
* check_rhub() - one note about CRAN incoming feasibility

## Updates
* This small update is to improve user instructions.
* Also fix a small bug in xxx_divider() which cause wrong alignment
* Solve the "NOTE" on CRAN check

# Hzhang 01/10/2021, V0.2.2

## Test environments
* local OS X install, R 4.1.1
* Ubuntu 16.04.6 LTS (on travis-ci), R version 4.0.2 (2020-06-22)
* windows 10 install, r 4.1.1

## R CMD check results
There were no ERRORs nor WARNINGs nor notes on Travis. 

-- R CMD check results ---- ARTofR 0.2.2 ----
Duration: 19.4s

Also no ERRORs nor WARNINGs nor notes on my local machine 

## Downstream dependencies
No relevant, this is the first submission

## Updates

write TRUE and FALSE instead of T and F. 

Some code lines in examples are commented out in xxx_box.Rd,
xxx_divider2.Rd, xxx_title1.Rd. Now # removed

# Hzhang 30/09/2021

## Test environments
* local OS X install, R 4.1.1
* Ubuntu 16.04.6 LTS (on travis-ci), R version 4.0.2 (2020-06-22)
* windows 10 install, r 4.1.1

## R CMD check results
There were no ERRORs nor WARNINGs nor notes on Travis. 

-- R CMD check results ---- ARTofR 0.2.1 ----
Duration: 16.4s

Also no ERRORs nor WARNINGs nor notes on my local machine 

## Downstream dependencies
No relevant, this is the first submission
