## Getting and Cleaning Data - Course Project

This README file explains how to use the R script [run_analysis.R](https://github.com/josemodena/GettingAndCleaningDataProject/blob/master/run_analysis.R) to transform the [raw data set](https://github.com/josemodena/GettingAndCleaningDataProject/blob/master/UCI%20HAR%20Dataset.zip) into the [tidy data set](https://github.com/josemodena/GettingAndCleaningDataProject/blob/master/tidy_dataset.txt).

Please refer to [CodeBook.md](https://github.com/josemodena/GettingAndCleaningDataProject/blob/master/CodeBook.md) for detailed information on the `raw data set`, the `tidy data set` and the operations performed by the script `run_analysis.R` to transform the former data set into the latter one.

### Assumptions

The instructions below assume the following:

* You have `R` installed and working in your computer.
* You have the package `reshape2` installed in your R.
* You have `Git` installed and working in your computer.
* No modifications are made to the `raw data set` files' contents or the folders they are extracted to.

The script `run_analysis.R` was tested on a Mac running OS X 10.9.2 and R version 3.0.3. The script was not tested in any other configuration.

### Instructions

1. Open the OS X Terminal application (Terminal.app) and create a new directory.
`mkdir courseproject`
2. Change your working directory to the `courseproject` directory.
`cd courseproject`
3. Clone the GitHub.com repository [GettingAndCleaningDataProject](https://github.com/josemodena/GettingAndCleaningDataProject) to your local computer.
`git clone https://github.com/josemodena/GettingAndCleaningDataProject`
4. Unzip the `raw data set`
`unzip UCI\ HAR\ Dataset.zip`
5. Copy the R script `run_analysis.R` to the `UCI HAR Dataset` directory.
`cp run_analysis.R UCI\ HAR\ Dataset`
6. Change your working directory to the `UCI HAR Dataset` directory.
`cd UCI\ HAR\ Dataset`
7. Run the R script `run_analysis.R`.
`Rscript run_analysis.R`
8. Wait for the R script to complete its execution.
9. The tidy data set is now created in your working directory and it's called `tidy_dataset.txt`.
