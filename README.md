# getting-cleaning-data-project

## Steps to reproduce
* step1: clone this github repository
* step2: make sure the raw data is in the working directory. 

As of latest git push raw data is included in this repo. See Files Description section
* step3: Run the R script run_analysis.R
* step4: 2 datasets will be produced:

1.TidyMergedData.txt - containing a merged data columnwise from the different files of the raw data

2.TidySubjectActivityAveraged.txt - containing a merged data that has been averaged per subject per activity

as of latest git push output is provided in this repo.

## Files Description
* UCI HAR Dataset <directory> : contains the raw data set, has its own readme inside
* TidyMergedData.txt : merged data from the files of raw dataset
* TidySubjectActivityAveraged.txt : summary average per subject per activity from TidyMergedData
* CodeBook.md : contains description of the Tidy files and steps to reproduce
* run_analysis.R : code used to produce the tidy data from raw data. Implements steps from codebook

# STEPS PERFORMED by run_analysis.R
* step1: load test subject
* step2: load test y which contains activity number
* step3: load test x
* step4: clean whitespaces of x
* step5: get mean per row of x
* step6: get sd per row of x
* step7: repeat steps 3-6 for: body_acc_x, body_acc_y, body_acc_z, body_gyro_x, body_gyro_y, body_gyro_z, total_acc_x, total_acc_y, total_acc_z
* step8: cbind everything
* step9: give name for each column
* step10: repeat steps 1-9 for train
* step11: rbind formatted test and train data
* step12: rename contents of activity column according to activity_labels.txt
* step13: TidyMergedData.txt write.table() row.name=FALSE
* step14: separate by subject
* step15: separate by activity the result from previous step
* step16: per result previous
* step17: rename contents of activity column according to activity_labels.txt
* step18: TidySubjectActivityAveraged.txt write.table() row.name=FALSE