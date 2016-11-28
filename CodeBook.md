
==================================================================
Getting and Cleaning Data Course Project
==================================================================
Punit Dharmadhikari
https://github.com/punitdharmadhikari/
==================================================================


The data from the project was obtained from

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

The full description of the data is available from

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

The following are temporary variables created in order to extract data from the text files.

1) test_set

2) train_set

3) test_labels

4) train_labels

5) test_subjects

6) train_subjects



These variables were then loaded with data sets and then "merged" using the rbind function. They were stored in the following variable names.

1) merged_sets

2) merged_labels

3) merged_subjects


The temporary variables were then deleted in order to free up valuable space on computer memory.


Two other data sets were imported which contained "Activity" labels and "Features" labels respectively. They were stored in:

1) activity_labels

2) features



Using the grepl function, several columns containing the mean and standard deviation were extracted.


Names were assigned to the columns using information from the "Features" data set.


Using the gsub function, the names of columns in "Activity" labels were "cleaned up" and made human-readable.


A tidy data set was created using the column bind function (cbind) and the data was written to "tidy_data_1.txt"

A second tidy table was also created that contained the column means.

For this, two nested 'for' loop were used.

Several variables were created for the loop function in order to add data to the tables.

1) unique_merged_subjects

2) n_subjects

3) n_activities

4) n_tidydata

5) end_row

6) tidy_data_2

7) r


The created data set in the variable tidy_data_2 was saved in "tidy_data_2.txt"
