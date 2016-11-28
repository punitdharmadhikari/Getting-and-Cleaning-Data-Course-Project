# Getting-and-Cleaning-Data-Course-Project

==================================================================
Getting and Cleaning Data Course Project
==================================================================
Punit Dharmadhikari
https://github.com/punitdharmadhikari/
==================================================================

The purpose of this project is to demonstrate your ability to collect, work with, and clean a data set.

The project contains a script named run_analysis.r

This script, when run in a data analysis software such as "RStudio (TM)", gets and cleans data from the "Human Activity Recognition Using Smartphones Dataset".

The script must be run in the main folder of the dataset. 

The script works as follows.
1) Reads in data tables from Test and Train data sets

2) Reads in data tables to form labels for Test and Train data sets

3) Reads in data tables to form subjects from Test and Train data sets

4) Reads in Activity Labels that will be assigned to the tables to make them "human readable"

5) Reads in a Features table

6) Merges the different test and train datasets using row bind functions

7) Cleans the data labels in order to properly follow the "clean data" guidelines for Data Science

8) Creates a tidy data table and outputs the results to "tidy_data_1.txt"

9) Creates a smaller data table consisting of the means and standard deviations of columns

10) Writes this data to "tidy_data_2.txt"

