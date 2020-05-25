This project includes four files: README.md, codebook.md, Get_clean_data.R, tidy_data.txt

Followings are steps done:

1. Download the dataset to my working directory and unzip.
2. Load the dataset: X_train.txt, X_test.txt, y_train.txt, y_test.txt, subject_train.txt, subject_test.txt, features.txt, activity_labels.txt.
3. Merges the X_train and X_test.txt by row, Y_train and Y_test.txt by row,subject_train and subject_test by row .
4. Merges the datasets obtained from above by column.
5. Extracts only the measurements on the mean and standard deviation for each measurement.
6. Uses descriptive activity names to name the activities in the data set.
7. Appropriately labels the data set with descriptive variable names.
8. Creates a second, independent tidy data set with the average of each variable for each activity and each subject.