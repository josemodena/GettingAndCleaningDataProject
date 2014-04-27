Coursera - Getting and Cleaning Data - Course Project
=====

This README file explains how to use the R script [run_analysis.R](https://github.com/josemodena/GettingAndCleaningDataProject/blob/master/run_analysis.R) to transform the [raw data set](https://github.com/josemodena/GettingAndCleaningDataProject/blob/master/UCI%20HAR%20Dataset.zip) into the [tidy data set](https://github.com/josemodena/GettingAndCleaningDataProject/blob/master/tidy_dataset.txt).

Please refer to [CodeBook.md](https://github.com/josemodena/GettingAndCleaningDataProject/blob/master/CodeBook.md) for detailed information on the `raw data set`, the `tidy data set` and the operations performed by the script `run_analysis.R` to transform the former data set into the latter one.

## Assumptions

* The instructions below assume you already have R installed and working in your computer.
* You have the package `reshape2` installed in your R.
* The `raw data set` files are available in your computer per the instructions below and no modifications are made to the files' contents or the folders where they are located.
* The script `run_analysis.R` is installed in and run from the folder `UCI HAR Dataset` per the instructions below.
* The script `run_analysis.R` was tested on a Mac running OS X 10.9.2 and R version 3.0.3. The script was not tested in any other configuration.

## Instructions

1. Download the `raw data set` using the link below and save it to a folder in your local drive.
https://github.com/josemodena/GettingAndCleaningDataProject/blob/master/UCI%20HAR%20Dataset.zip
2. Unzip the downloaded file, maintaing the directory structure of the archived files. A folder called `UCI HAR Dataset` is going to be created.
3. Open the OS X Terminal application (Terminal.app) and change your working directory to the `UCI HAR Dataset` folder.
4. Download the R script `run_analysis.R` using the link below and save it into the `UCI HAR Dataset` folder.
https://github.com/josemodena/GettingAndCleaningDataProject/blob/master/run_analysis.R
5. Run the following command:
`Rscript run_analysis.R`
6. Wait for the R script to complete its execution.
7. The tidy data set is now created in your working directory and it's called `tidy_dataset.txt`.
