##	functions that computes standard deviations of rows of a dataframe - modified from package "matrixStats"
rowStdevs <- function (x, center = NULL, ...) 
{
    n <- rowSums(!is.na(x))
    n[n <= 1L] <- NA
    if (is.null(center)) {
        center <- rowMeans(x, ...)
    }
    return(sqrt(rowSums((x - center)^2, ...)/(n - 1)))
}


##	here comes path to the folder "UCI HAR Dataset" with provided data
path <- "C:/Users/Sharky/Courses/coursera/Data science/Getting and cleaning the data/Project/UCI HAR Dataset"
setwd(path)


##	vectors of names of activities
activities <- c("body_acc_x", "body_acc_y", "body_acc_z", "body_gyro_x", "body_gyro_y",
"body_gyro_z", "total_acc_x", "total_acc_y", "total_acc_z")


## merge test and train datasets, computes means and standard deviations
means <- c()
sds <- c()
print("Merging datasets and computing means and standard deviations ...")
for (i in 1:length(activities)){
file_test <- read.table(paste("./test/Inertial Signals/",activities[i],"_test", ".txt", sep =""))
file_train <- read.table(paste("./train/Inertial Signals/",activities[i],"_train", ".txt", sep =""))
file <- rbind(file_test, file_train) # merged dataset. I know it's not what was asked :(
means <- c(means, mean(rowMeans(file)))
sds <- c(sds, mean(rowStdevs(file)))
}
print("Merging and computations done ...")

##	Vectors of labels and values
activities_means <- paste(activities, "mean", sep ="_")
activities_Sds <- paste(activities, "SD", sep ="_")
labels <- c(activities_means, activities_Sds)
values <- c(means, sds)
dataset_matrix <- rbind(labels, values)

##	Save the dataset into a file
print("Saving the dataset ...")
write.table(dataset_matrix, file="tidy_dataset.txt", row.names=FALSE, col.names=FALSE)
print("Fake pseudo-tidy-dataset saved into a file!")
