# RESULTING COLUMNS
* subject
* x_mean
* x_sd
* y_mean
* y_sd
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
* step1: load test
subject
* step2: load test
* x
* step3: clean whitespaces of
 x
* step4: get mean per row of
x
* step5: get sd per row of
x
* step6: repeat steps 2-5 for
y
body_acc_x
body_acc_y
body_acc_z
body_gyro_x
body_gyro_y
body_gyro_z
total_acc_x
total_acc_y
total_acc_z
* step7: repeat steps 1-6 for train

