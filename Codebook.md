This is the code book for Getting and cleaning data module assignent. Here we extract different datasets from zip file, 
merge the datasets, extract mean and standard deviation data only, allot the activity as per activity id and clean the data.

Here are the details of steps followed for making code:
1. First we extract the data from train dataset and test dataset. we also extract data of  activity labels and 
   features which contains important data about parameters which we measured for different activity performed by 30 subject.

2. Here in this step we merge data of test and train. firstly we merge data of X by row binding (10299*561) then 
   y data by row binding(10299*1) and then subject by row binding (10299*1). Now we merge all data here by column and 
   we got 10299*563.

3. Here we extract the mean and standard deviation data from Dataset of STEP 1.

4. Here we give the activity name in the dataset we got from STEP2 as per activity id from the Activity_label dataset.

5. In this step we give descriptive names and substitute in dataset.

6. In this step we create tidy data set with the average of each variable for each activity and each subject.


Brief description of Tidy data file is below.

Activity column has 6 types of activity listed below-
1 WALKING
2 WALKING_UPSTAIRS
3 WALKING_DOWNSTAIRS
4 SITTING
5 STANDING
6 LAYING

Tidydata set has average value of each variable for each activity as per above and for each subject. Column names of 
Tidydata.txt column are-

"activity"
"subject"
"time BodyAcceleration-mean()-X"
"time BodyAcceleration-mean()-Y"
"time BodyAcceleration-mean()-Z"
"time BodyAcceleration-std()-X"
"time BodyAcceleration-std()-Y"
"time BodyAcceleration-std()-Z"
"time GravityAcceleration-mean()-X"
"time GravityAcceleration-mean()-Y"
"time GravityAcceleration-mean()-Z"
"time GravityAcceleration-std()-X"
"time GravityAcceleration-std()-Y"
"time GravityAcceleration-std()-Z"
"time BodyAccelerationJerk-mean()-X"
"time BodyAccelerationJerk-mean()-Y"
"time BodyAccelerationJerk-mean()-Z"
"time BodyAccelerationJerk-std()-X"
"time BodyAccelerationJerk-std()-Y"
"time BodyAccelerationJerk-std()-Z"
"time BodyGyroscope-mean()-X"
"time BodyGyroscope-mean()-Y"
"time BodyGyroscope-mean()-Z"
"time BodyGyroscope-std()-X"
"time BodyGyroscope-std()-Y"
"time BodyGyroscope-std()-Z"
"time BodyGyroscopeJerk-mean()-X"
"time BodyGyroscopeJerk-mean()-Y"
"time BodyGyroscopeJerk-mean()-Z"
"time BodyGyroscopeJerk-std()-X"
"time BodyGyroscopeJerk-std()-Y"
"time BodyGyroscopeJerk-std()-Z"
"time BodyAccelerationMag-mean()"
"time BodyAccelerationMag-std()"
"time GravityAccelerationMag-mean()"
"time GravityAccelerationMag-std()"
"time BodyAccelerationJerkMag-mean()"
"time BodyAccelerationJerkMag-std()"
"time BodyGyroscopeMag-mean()"
"time BodyGyroscopeMag-std()"
"time BodyGyroscopeJerkMag-mean()"
"time BodyGyroscopeJerkMag-std()"
"frequency BodyAcceleration-mean()-X"
"frequency BodyAcceleration-mean()-Y"
"frequency BodyAcceleration-mean()-Z"
"frequency BodyAcceleration-std()-X"
"frequency BodyAcceleration-std()-Y"
"frequency BodyAcceleration-std()-Z"
"frequency BodyAccelerationJerk-mean()-X"
"frequency BodyAccelerationJerk-mean()-Y"
"frequency BodyAccelerationJerk-mean()-Z"
"frequency BodyAccelerationJerk-std()-X"
"frequency BodyAccelerationJerk-std()-Y"
"frequency BodyAccelerationJerk-std()-Z"
"frequency BodyGyroscope-mean()-X"
"frequency BodyGyroscope-mean()-Y"
"frequency BodyGyroscope-mean()-Z"
"frequency BodyGyroscope-std()-X"
"frequency BodyGyroscope-std()-Y"
"frequency BodyGyroscope-std()-Z"
"frequency BodyAccelerationMag-mean()"
"frequency BodyAccelerationMag-std()"
"frequency BodyBodyAccelerationJerkMag-mean()"
"frequency BodyBodyAccelerationJerkMag-std()"
"frequency BodyBodyGyroscopeMag-mean()"
"frequency BodyBodyGyroscopeMag-std()"
"frequency BodyBodyGyroscopeJerkMag-mean()"
"frequency BodyBodyGyroscopeJerkMag-std()"


 