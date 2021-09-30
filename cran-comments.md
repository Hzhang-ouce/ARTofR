# Hzhang 30/09/2021

## Test environments
* local OS X install, R 4.1.1
* Ubuntu 16.04.6 LTS (on travis-ci), R version 4.0.2 (2020-06-22)
* windows 10 install, r 4.1.1

## R CMD check results
There were no ERRORs nor WARNINGs not notes on Travis. 

There was 1 WARNINGs on my local machine.

> checking for unstated dependencies in examples ... OK
   WARNING
  'qpdf' is needed for checks on size reduction of PDFs

0 errors √ | 1 warning x | 0 notes √

This is not relevant to the package, there is no pdf



## Downstream dependencies
No relevant, this is the first submission