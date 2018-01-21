# RESULTING COLUMNS
* subject
* x_mean
* x_sd
* y = contains activity
* body_acc_x_mean
* body_acc_x_sd
* body_acc_y_mean
* body_acc_y_sd
* body_acc_z_mean
* body_acc_z_sd
* body_gyro_x_mean
* body_gyro_x_sd
* body_gyro_y_mean
* body_gyro_y_sd
* body_gyro_z_mean
* body_gyro_z_sd
* total_acc_x_mean
* total_acc_x_sd
* total_acc_y_mean
* total_acc_y_sd
* total_acc_z_mean
* total_acc_z_sd

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
* step13: write.table() row.name=FALSE
* step14: end