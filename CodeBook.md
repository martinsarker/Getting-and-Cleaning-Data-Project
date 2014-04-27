### Original data
- [source](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip) 
- [description](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)

### What does the script do?
- Nothing much (At least I tried ...)
- Read data of all activities for "train" and "test" datasets
- Merges "train" and "test" datasets in a very creepy way - simply by rbind for each activity
- Computes mean and standard deviation for each activity in all merged datasets
- Create a character matrix 2X18 with labels of means and standard deviations of values from all measured activities
- Saves this matrix as a table into a file called "tidy_dataset.txt"

### Description of variables:
- I don't have a clue what all those variables in the original dataset mean, but you can read about them in files 
provided in the original dataset
- Data from original dataset is sumarized into a "tidy_dataset.txt"
- The sumarized dataset contains means and standard deviations from merged datasets for each activity

### Names of columns:
- "body_acc_x_mean" 
- "body_acc_y_mean" 
- "body_acc_z_mean" 
- "body_gyro_x_mean"
- "body_gyro_y_mean" 
- "body_gyro_z_mean" 
- "total_acc_x_mean" 
- "total_acc_y_mean" 
- "total_acc_z_mean"
- "body_acc_x_SD" 
- "body_acc_y_SD" 
- "body_acc_z_SD"
- "body_gyro_x_SD" 
- "body_gyro_y_SD" 
- "body_gyro_z_SD" 
- "total_acc_x_SD"
- "total_acc_y_SD" 
- "total_acc_z_SD"
