# Description
single file combined data form of raw data cellphone movement reading files provided by samsung.

# RESULTING COLUMNS for TidyMergedData.txt
*subject 
*activity 
*set.mean 
*set.standard.deviation 
*body.acceleration.x.mean 
*body.acceleration.x.standard.deviation 
*body.acceleration.y.mean 
*body.acceleration.y.standard.deviation 
*body.acceleration.z.mean 
*body.acceleration.z.standard.deviation 
*body.gyroscope.x.mean 
*body.gyroscope.x.standard.deviation 
*body.gyroscope.y.mean 
*body.gyroscope.y.standard.deviation 
*body.gyroscope.z.mean 
*body.gyroscope.z.standard.deviation 
*total.acceleration.x.mean 
*total.acceleration.x.standard.deviation 
*total.acceleration.y.mean 
*total.acceleration.y.standard.deviation 
*total.acceleration.z.mean 
*total.acceleration.z.standard.deviation

# RESULTING COLUMNS for SubjectActivityAveraged.txt
*subject 
*activity 
*set.mean 
*set.standard.deviation 
*body.acceleration.x.mean 
*body.acceleration.x.standard.deviation 
*body.acceleration.y.mean 
*body.acceleration.y.standard.deviation 
*body.acceleration.z.mean 
*body.acceleration.z.standard.deviation 
*body.gyroscope.x.mean 
*body.gyroscope.x.standard.deviation 
*body.gyroscope.y.mean 
*body.gyroscope.y.standard.deviation 
*body.gyroscope.z.mean 
*body.gyroscope.z.standard.deviation 
*total.acceleration.x.mean 
*total.acceleration.x.standard.deviation 
*total.acceleration.y.mean 
*total.acceleration.y.standard.deviation 
*total.acceleration.z.mean 
*total.acceleration.z.standard.deviation


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