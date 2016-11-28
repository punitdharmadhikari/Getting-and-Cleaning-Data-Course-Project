## Reading in the data sets
test_set <- read.table("test/X_test.txt")
train_set <- read.table("train/X_train.txt")

## Reading in the labels
test_labels <- read.table("test/y_test.txt")
train_labels <- read.table("train/y_train.txt")

## Reading in the subjects
test_subjects <- read.table("test/subject_test.txt")
train_subjects <- read.table("train/subject_train.txt")

## Read in activity data set
activity_labels <- read.table("activity_labels.txt")

## Merge data using rbind command
merged_sets <- rbind(test_set, train_set)
merged_labels <- rbind(test_labels, train_labels)
merged_subjects <- rbind(test_subjects, train_subjects)

## Remove variables to free space
rm(test_set)
rm(train_set)
rm(test_labels)
rm(train_labels)
rm(test_subjects)
rm(train_subjects)

## Read in features table to be used as column list
features <- read.table("features.txt", stringsAsFactors = FALSE)
features <- features$V2

## Keep certain columns
features_columns <- grepl("(std|mean[^F])", features)
merged_sets <- merged_sets[, features_columns]
names(merged_sets) <- tolower(gsub("\\(|\\)","",features[features_columns]))

## Assign activity labels to data set
activity_labels$V2 <- gsub("_","", as.character(activity_labels$V2))
activity_labels$V2 <- tolower(activity_labels$V2)
merged_labels[,1] <- activity_labels[merged_labels[,1],2]

## Add names
names(merged_labels) <- "Activity"
names(merged_subjects) <- "Subject"

## Create tidy data table
tidy_data <- cbind(merged_subjects, merged_labels, merged_sets)
write.table(tidy_data, "tidy_data_1.txt")

## Second tidy data table
unique_merged_subjects <- unique(merged_subjects)[,1]
n_subjects <- length(unique_merged_subjects)
n_activities <- length(activity_labels[,1])
n_tidydata <- length(names(tidy_data))
end_row <- n_subjects * n_activities
tidy_data_2 <- tidy_data[1:end_row,]
r <- 1

for(i in 1:n_subjects)
{
  for(j in 1:n_activities)
  {
    tidy_data_2[r, 1] <- unique_merged_subjects[i]
    tidy_data_2[r, 2] <- activity_labels[j, 2]
    merged_data <- tidy_data[tidy_data$Subject==i & tidy_data$Activity==activity_labels[j,2],]
    tidy_data_2[r, 3:n_tidydata] <- colMeans(merged_data[, 3:n_tidydata])
    r <- r + 1
  }
}

write.table(tidy_data,"tidy_data_2.txt")