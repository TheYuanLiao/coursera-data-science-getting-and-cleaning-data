library(data.table)
library(dplyr)
library(knitr)

# 0 Data preparation

# Folder contains unzipped raw data
rd_folder <- "data/getdata_projectfiles_UCI HAR Dataset/UCI HAR Dataset/"

# File lists of X_test & X_train, and y_test & y_train for merging
vX <- lapply(c("test/X_test.txt", "train/X_train.txt"), 
             function(x){paste0(rd_folder, x)})
vy <- lapply(c("test/y_test.txt", "train/y_train.txt"), 
             function(x){paste0(rd_folder, x)})
vsub <- lapply(c("test/subject_test.txt", "train/subject_train.txt"), 
             function(x){paste0(rd_folder, x)})
# 1 Merges the training and the test sets to create one data set.
DT <- rbindlist(lapply(vX, fread))
y <- rbindlist(lapply(vy, fread))
subs <- rbindlist(lapply(vsub, fread))
names(y) <- c("activity")
names(subs) <- c("subject")

# 2 Extracts only the measurements on the mean and 
# standard deviation for each measurement.

# 2-1 Read feature list (f_code)
f_code <- fread(paste0(rd_folder, "features.txt"))
names(f_code) <- c("f_col", "f_name")

# 2-2 Select only features of mean() and std()
selected <- grep("mean\\(\\)|std\\(\\)", f_code$f_name)
f_code <- f_code[selected,]
f_code$f_id <- seq_along(f_code$f_col)
DT <- select(DT, names(DT)[f_code$f_col])

# 3 Uses descriptive activity names to name the activities in the data set.

# 3-1 Read activity labels (ac_label)
ac_label <- fread(paste0(rd_folder, "activity_labels.txt"))
names(ac_label) <- c("activity", "ac_name")

# 3-2 Convert labels to names (ac_label)
y <- merge(y, ac_label, by="activity")

# 4 Appropriately labels the data set with descriptive variable names.
names(DT) <- f_code$f_name
DT$activity <- y$ac_name
DT$subject <- subs$subject

# Write 
write.table(DT, file="data/tidy_data1.txt", row.name=FALSE)

# 5 Average value by group of activities
DT_ac <- DT %>%
          group_by(activity, subject) %>%
          summarise(across(everything(), mean))
write.table(DT_ac, file="data/tidy_data2.txt", row.name=FALSE)
