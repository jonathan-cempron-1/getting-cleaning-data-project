# RESULTING COLUMNS for TidyMergedData.txt

suffix mean = mean 

suffix sd = standard deviation

total_acc = units 'g' acceleration signal x y z axis

body_acc = body acceleration signal x y z axis

gyro = gyroscope angular velocity reading x y z axis

* subject
* activity
* x.mean
* x.sd
* y = contains activity
* body.acc.x.mean
* body.acc.x.sd
* body.acc.y.mean
* body.acc.y.sd
* body.acc.z.mean
* body.acc.z.sd
* body.gyro.x.mean
* body.gyro.x.sd
* body.gyro.y.mean
* body.gyro.y.sd
* body.gyro.z.mean
* body.gyro.z.sd
* total.acc.x.mean
* total.acc.x.sd
* total.acc.y.mean
* total.acc.y.sd
* total.acc.z.mean
* total.acc.z.sd

# RESULTING COLUMNS for SubjectActivityAveraged.txt

avg = average from data in TidyMergedData.txt

* subject
* activity
* x.mean.avg
* x.sd.avg
* y = contains activity.avg
* body.acc.x.mean.avg
* body.acc.x.sd.avg
* body.acc.y.mean.avg
* body.acc.y.sd.avg
* body.acc.z.mean.avg
* body.acc.z.sd.avg
* body.gyro.x.mean.avg
* body.gyro.x.sd.avg
* body.gyro.y.mean.avg
* body.gyro.y.sd.avg
* body.gyro.z.mean.avg
* body.gyro.z.sd.avg
* total.acc.x.mean.avg
* total.acc.x.sd.avg
* total.acc.y.mean.avg
* total.acc.y.sd.avg
* total.acc.z.mean.avg
* total.acc.z.sd.avg


# STEPS PERFORMED
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