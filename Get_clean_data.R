# first we extract the data from train dataset and test dataset. we also extract data of 
# activity labels and features which contains important data about parameters which we 
# measured on which activity. 

Activity_label <- read.table("~/R course/UCI HAR Dataset/activity_labels.txt", col.names = 
                               c("id","activity"))
Feature <- read.table("~/R course/UCI HAR Dataset/features.txt", col.names = 
                        c("id","Parameter"))
X_test <- read.table("~/R course/UCI HAR Dataset/test/X_test.txt", col.names = 
                       Feature$Parameter)
y_test <- read.table("~/R course/UCI HAR Dataset/test/y_test.txt", col.names = 
                       "activityid")
Subject_test <- read.table("~/R course/UCI HAR Dataset/test/subject_test.txt", col.names = 
                             "subid")
X_train <- read.table("~/R course/UCI HAR Dataset/train/X_train.txt", col.names =
                        Feature$Parameter)
y_train <- read.table("~/R course/UCI HAR Dataset/train/y_train.txt", col.names = 
                        "activityid")
Subject_train <- read.table("~/R course/UCI HAR Dataset/train/subject_train.txt",col.names = 
                              "subid")

# STEP 1: Here in this step we merge data of test and train. firstly we merge data of X 
# by row binding (10299*561) then y data by row binding(10299*1) and then subject 
# by row binding (10299*1). Now we merge all data here by column and we got 10299*563. 

Total_X <- rbind(X_test, X_train)
Total_y <- rbind(y_test, y_train)
Total_Subject <- rbind(Subject_test, Subject_train)
All_Data <- cbind(Total_Subject, Total_y, Total_X)

# STEP 2: Here we extract the mean and standard deviation data from Dataset of STEP 1.

select_col_no <- grep("mean\\(\\)|std\\(\\)", Feature$Parameter)
select_col <- Total_X[ ,select_col_no]
mean_std_data <- cbind(All_Data[ ,c(1,2)],select_col)

#STEP 3: Here we give the activity name in the dataset we got from STEP2 as per 
# activity id from the Activity_label dataset.

mean_std_data$activityid <- factor(mean_std_data$activityid, levels = Activity_label$id,
                                   labels = Activity_label$activity)

# STEP 4: In this step we give descriptive names and substitute in dataset

names(mean_std_data) <- sub("Acc", "Acceleration",names(mean_std_data) )
names(mean_std_data) <- sub("std", "Standard Deviation",names(mean_std_data) )
names(mean_std_data) <- sub("Gyro", "Gyroscope",names(mean_std_data) )
names(mean_std_data) <- sub("tBody", "time Body",names(mean_std_data) )
names(mean_std_data) <- sub("fBody", "frequency Body",names(mean_std_data) )

# STEP 5: In this step we create tidy data set with the average of each variable 
# for each activity and each subject.

Tidydata <- 
  mean_std_data %>% 
  group_by (subid, activityid) %>% 
  summarise_all(mean)
write.table(Tidydata, file = "Tidydata.txt", row.names = F)
