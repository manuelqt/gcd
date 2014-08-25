The dataset includes the following files:

'features_info.txt': Shows information about the variables used on the feature vector.
'features.txt': List of all features.
'activity_labels.txt': Links the class labels with their activity name.
'train/X_train.txt': Training set.
'train/y_train.txt': Training labels.
'test/X_test.txt': Test set.
'test/y_test.txt': Test labels.
'train/subject_train.txt': Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30.
'train/Inertial Signals/total_acc_x_train.txt': The acceleration signal from the smartphone accelerometer X axis in standard gravity units 'g'. Every row shows a 128 element vector. The same description applies for the 'total_acc_x_train.txt' and 'total_acc_z_train.txt' files for the Y and Z axis.
'train/Inertial Signals/body_acc_x_train.txt': The body acceleration signal obtained by subtracting the gravity from the total acceleration.
'train/Inertial Signals/body_gyro_x_train.txt': The angular velocity vector measured by the gyroscope for each window sample. The units are radians/second.




Transformations

Load test and training sets and the activities


The data set has been stored in the UCI HAR Dataset/ directory.

The CDN url provided by the instructor is used instead of the original location, to offload the traffic to the UCI server.

The unzip function is used to extract the zip file in this directory.

Descriptive activity names to name the activities in the data set


The class labels linked with their activity names are loaded from the activity_labels.txt file. 


Appropriately labels the data set with descriptive activity names

Each data frame of the data set is labeled - using the features.txt - with the information about the variables used on the feature vector. The Activity and Subject columns are also named properly before merging them to the test and train dataset.



Merge test and training sets into one data set, including the activities

The Activity and Subject columns are appended to the test and train data frames, and then are both merged in a new data frame.


Extract only the measurements on the mean and standard deviation for each measurement


Creates a second, independent tidy data set with the average of each variable for each activity and each subject.

Finaly the desired result, a tidy data table is created with the average of each measurement per activity/subject combination. The new dataset is saved in tidydata.txt file.



TidyData  Fields


1. activity<br>
2. Subject<br>
3. tBodyAcc-mean()-X<br>
4. tBodyAcc-mean()-Y<br>
5. tBodyAcc-mean()-Z<br>
6. tGravityAcc-mean()-X<br>
7. tGravityAcc-mean()-Y<br>
8. tGravityAcc-mean()-Z<br>
9. tBodyAccJerk-mean()-X<br>
10. tBodyAccJerk-mean()-Y<br>
11. tBodyAccJerk-mean()-Z<br>
12. tBodyGyro-mean()-X<br>
13. tBodyGyro-mean()-Y<br>
14. tBodyGyro-mean()-Z<br>
15. tBodyGyroJerk-mean()-X<br>
16. tBodyGyroJerk-mean()-Y<br>
17. tBodyGyroJerk-mean()-Z<br>
18. tBodyAccMag-mean()<br>
19. tGravityAccMag-mean()<br>
20. tBodyAccJerkMag-mean()<br>
21. tBodyGyroMag-mean()<br>
22. tBodyGyroJerkMag-mean()<br>
23. fBodyAcc-mean()-X<br>
24. fBodyAcc-mean()-Y<br>
25. fBodyAcc-mean()-Z<br>
26. fBodyAcc-meanFreq()-X<br>
27. fBodyAcc-meanFreq()-Y<br>
28. fBodyAcc-meanFreq()-Z<br>
29. fBodyAccJerk-mean()-X<br>
30. fBodyAccJerk-mean()-Y<br>
31. fBodyAccJerk-mean()-Z<br>
32. fBodyAccJerk-meanFreq()-X<br>
33. fBodyAccJerk-meanFreq()-Y<br>
34. fBodyAccJerk-meanFreq()-Z<br>
35. fBodyGyro-mean()-X<br>
36. fBodyGyro-mean()-Y<br>
37. fBodyGyro-mean()-Z<br>
38. fBodyGyro-meanFreq()-X<br>
39. fBodyGyro-meanFreq()-Y<br>
40. fBodyGyro-meanFreq()-Z<br>
41. fBodyAccMag-mean()<br>
42. fBodyAccMag-meanFreq()<br>
43. fBodyBodyAccJerkMag-mean()<br>
44. fBodyBodyAccJerkMag-meanFreq()<br>
45. fBodyBodyGyroMag-mean()<br>
46. fBodyBodyGyroMag-meanFreq()<br>
47. fBodyBodyGyroJerkMag-mean()<br>
48. fBodyBodyGyroJerkMag-meanFreq()<br>
49. angle(tBodyAccMean,gravity)<br>
50. angle(tBodyAccJerkMean),gravityMean)<br>
51. angle(tBodyGyroMean,gravityMean)<br>
52. angle(tBodyGyroJerkMean,gravityMean)<br>
53. angle(X,gravityMean)<br>
54. angle(Y,gravityMean)<br>
55. angle(Z,gravityMean)<br>
