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