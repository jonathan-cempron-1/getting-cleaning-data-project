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
* step2: cbind subject to the resulting data frame
* step3: load test y which contains activity number
* step4: cbind activity to the resulting data frame
* step5: load test x
* step6: clean whitespaces of x
* step7: get mean per row of x
* step8: get sd per row of x
* step9: cbind the mean and sd to the resulting data frame
* step10: repeat steps 5-9 for: body_acc_x, body_acc_y, body_acc_z, body_gyro_x, body_gyro_y, body_gyro_z, total_acc_x, total_acc_y, total_acc_z
* step11: repeat steps 1-10 for train
* step12: rbind formatted test and train data
* step13: save to csv
* step14: end

