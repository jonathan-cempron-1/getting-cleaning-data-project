# step1: load test subject
test.subj = read.table("UCI\ HAR\ Dataset/test/subject_test.txt")
# step2: load test activity
test.activity = read.table("UCI\ HAR\ Dataset/test/y_test.txt")
# step3-6: load x table ang get mean sd
test.x = read.table("UCI\ HAR\ Dataset/test/X_test.txt")
test.x.mean = apply(test.x, 1, mean)
test.x.sd = apply(test.x, 1, sd)
# step7: perform 3-6 to other test data
# 3-6: of body_acc_x
test.body.acc.x = read.table("UCI\ HAR\ Dataset/test/Inertial\ Signals/body_acc_x_test.txt")
test.body.acc.x.mean = apply(test.body.acc.x, 1, mean)
test.body.acc.x.sd = apply(test.body.acc.x, 1, sd)
# 3-6: of body_acc_y
test.body.acc.y = read.table("UCI\ HAR\ Dataset/test/Inertial\ Signals/body_acc_y_test.txt")
test.body.acc.y.mean = apply(test.body.acc.y, 1, mean)
test.body.acc.y.sd = apply(test.body.acc.y, 1, sd)
# 3-6: of body_acc_z
test.body.acc.z = read.table("UCI\ HAR\ Dataset/test/Inertial\ Signals/body_acc_z_test.txt")
test.body.acc.z.mean = apply(test.body.acc.z, 1, mean)
test.body.acc.z.sd = apply(test.body.acc.z, 1, sd)
# 3-6: of body_gyro_x
test.body.gyro.x = read.table("UCI\ HAR\ Dataset/test/Inertial\ Signals/body_gyro_x_test.txt")
test.body.gyro.x.mean = apply(test.body.gyro.x, 1, mean)
test.body.gyro.x.sd = apply(test.body.gyro.x, 1, sd)
# 3-6: of body_gyro_y
test.body.gyro.y = read.table("UCI\ HAR\ Dataset/test/Inertial\ Signals/body_gyro_y_test.txt")
test.body.gyro.y.mean = apply(test.body.gyro.y, 1, mean)
test.body.gyro.y.sd = apply(test.body.gyro.y, 1, sd)
# 3-6: of body_gyro_z
test.body.gyro.z = read.table("UCI\ HAR\ Dataset/test/Inertial\ Signals/body_gyro_z_test.txt")
test.body.gyro.z.mean = apply(test.body.gyro.z, 1, mean)
test.body.gyro.z.sd = apply(test.body.gyro.z, 1, sd)
# 3-6: of total_acc_x
test.total.acc.x = read.table("UCI\ HAR\ Dataset/test/Inertial\ Signals/total_acc_x_test.txt")
test.total.acc.x.mean = apply(test.total.acc.x, 1, mean)
test.total.acc.x.sd = apply(test.total.acc.x, 1, sd)
# 3-6: of total_acc_y
test.total.acc.y = read.table("UCI\ HAR\ Dataset/test/Inertial\ Signals/total_acc_y_test.txt")
test.total.acc.y.mean = apply(test.total.acc.y, 1, mean)
test.total.acc.y.sd = apply(test.total.acc.y, 1, sd)
# 3-6: of total_acc_z
test.total.acc.z = read.table("UCI\ HAR\ Dataset/test/Inertial\ Signals/total_acc_z_test.txt")
test.total.acc.z.mean = apply(test.total.acc.z, 1, mean)
test.total.acc.z.sd = apply(test.total.acc.z, 1, sd)
# step8: combine everything
test.data.frame = data.frame(test.subj, test.activity, test.x.mean, test.x.sd, test.body.acc.x.mean, test.body.acc.x.sd, test.body.acc.y.mean, test.body.acc.y.sd, test.body.acc.z.mean, test.body.acc.z.sd, test.body.gyro.x.mean, test.body.gyro.x.sd, test.body.gyro.y.mean, test.body.gyro.y.sd, test.body.gyro.z.mean, test.body.gyro.z.sd, test.total.acc.x.mean, test.total.acc.x.sd, test.total.acc.y.mean, test.total.acc.y.sd, test.total.acc.z.mean, test.total.acc.z.sd)
# step9: give name for each column
names(test.data.frame) = c("subj", "activity", "x.mean", "x.sd", "body.acc.x.mean", "body.acc.x.sd", "body.acc.y.mean", "body.acc.y.sd", "body.acc.z.mean", "body.acc.z.sd", "body.gyro.x.mean", "body.gyro.x.sd", "body.gyro.y.mean", "body.gyro.y.sd", "body.gyro.z.mean", "body.gyro.z.sd", "total.acc.x.mean", "total.acc.x.sd", "total.acc.y.mean", "total.acc.y.sd", "total.acc.z.mean", "total.acc.z.sd")
# step10-restep1: load train subject
train.subj = read.table("UCI\ HAR\ Dataset/train/subject_train.txt")
# step10-restep2: load train activity
train.activity = read.table("UCI\ HAR\ Dataset/train/y_train.txt")
# step10-restep3-6: load x table ang get mean sd
train.x = read.table("UCI\ HAR\ Dataset/train/X_train.txt")
train.x.mean = apply(train.x, 1, mean)
train.x.sd = apply(train.x, 1, sd)
# step10-restep7: perform 3-6 to other train data
# 3-6: of body_acc_x
train.body.acc.x = read.table("UCI\ HAR\ Dataset/train/Inertial\ Signals/body_acc_x_train.txt")
train.body.acc.x.mean = apply(train.body.acc.x, 1, mean)
train.body.acc.x.sd = apply(train.body.acc.x, 1, sd)
# 3-6: of body_acc_y
train.body.acc.y = read.table("UCI\ HAR\ Dataset/train/Inertial\ Signals/body_acc_y_train.txt")
train.body.acc.y.mean = apply(train.body.acc.y, 1, mean)
train.body.acc.y.sd = apply(train.body.acc.y, 1, sd)
# 3-6: of body_acc_z
train.body.acc.z = read.table("UCI\ HAR\ Dataset/train/Inertial\ Signals/body_acc_z_train.txt")
train.body.acc.z.mean = apply(train.body.acc.z, 1, mean)
train.body.acc.z.sd = apply(train.body.acc.z, 1, sd)
# 3-6: of body_gyro_x
train.body.gyro.x = read.table("UCI\ HAR\ Dataset/train/Inertial\ Signals/body_gyro_x_train.txt")
train.body.gyro.x.mean = apply(train.body.gyro.x, 1, mean)
train.body.gyro.x.sd = apply(train.body.gyro.x, 1, sd)
# 3-6: of body_gyro_y
train.body.gyro.y = read.table("UCI\ HAR\ Dataset/train/Inertial\ Signals/body_gyro_y_train.txt")
train.body.gyro.y.mean = apply(train.body.gyro.y, 1, mean)
train.body.gyro.y.sd = apply(train.body.gyro.y, 1, sd)
# 3-6: of body_gyro_z
train.body.gyro.z = read.table("UCI\ HAR\ Dataset/train/Inertial\ Signals/body_gyro_z_train.txt")
train.body.gyro.z.mean = apply(train.body.gyro.z, 1, mean)
train.body.gyro.z.sd = apply(train.body.gyro.z, 1, sd)
# 3-6: of total_acc_x
train.total.acc.x = read.table("UCI\ HAR\ Dataset/train/Inertial\ Signals/total_acc_x_train.txt")
train.total.acc.x.mean = apply(train.total.acc.x, 1, mean)
train.total.acc.x.sd = apply(train.total.acc.x, 1, sd)
# 3-6: of total_acc_y
train.total.acc.y = read.table("UCI\ HAR\ Dataset/train/Inertial\ Signals/total_acc_y_train.txt")
train.total.acc.y.mean = apply(train.total.acc.y, 1, mean)
train.total.acc.y.sd = apply(train.total.acc.y, 1, sd)
# 3-6: of total_acc_z
train.total.acc.z = read.table("UCI\ HAR\ Dataset/train/Inertial\ Signals/total_acc_z_train.txt")
train.total.acc.z.mean = apply(train.total.acc.z, 1, mean)
train.total.acc.z.sd = apply(train.total.acc.z, 1, sd)
# step10-restep8: combine everything
train.data.frame = data.frame(train.subj, train.activity, train.x.mean, train.x.sd, train.body.acc.x.mean, train.body.acc.x.sd, train.body.acc.y.mean, train.body.acc.y.sd, train.body.acc.z.mean, train.body.acc.z.sd, train.body.gyro.x.mean, train.body.gyro.x.sd, train.body.gyro.y.mean, train.body.gyro.y.sd, train.body.gyro.z.mean, train.body.gyro.z.sd, train.total.acc.x.mean, train.total.acc.x.sd, train.total.acc.y.mean, train.total.acc.y.sd, train.total.acc.z.mean, train.total.acc.z.sd)
# step10-restep9: give name for each column
names(train.data.frame) = c("subj", "activity", "x.mean", "x.sd", "body.acc.x.mean", "body.acc.x.sd", "body.acc.y.mean", "body.acc.y.sd", "body.acc.z.mean", "body.acc.z.sd", "body.gyro.x.mean", "body.gyro.x.sd", "body.gyro.y.mean", "body.gyro.y.sd", "body.gyro.z.mean", "body.gyro.z.sd", "total.acc.x.mean", "total.acc.x.sd", "total.acc.y.mean", "total.acc.y.sd", "total.acc.z.mean", "total.acc.z.sd")
# step11: rbind everything
mergedData = rbind(test.data.frame, train.data.frame)
rawMerge = mergedData
# step12: give descriptive names for activity column
activity1index = grep(1, mergedData$activity)
mergedData$activity[activity1index] = "WALKING"
activity2index = grep(2, mergedData$activity)
mergedData$activity[activity2index] = "WALKING_UPSTAIRS"
activity3index = grep(3, mergedData$activity)
mergedData$activity[activity3index] = "WALKING_DOWNSTAIRS"
activity4index = grep(4, mergedData$activity)
mergedData$activity[activity4index] = "SITTING"
activity5index = grep(5, mergedData$activity)
mergedData$activity[activity5index] = "STANDING"
activity6index = grep(6, mergedData$activity)
mergedData$activity[activity6index] = "LAYING"
# step13: write data
write.table(mergedData, file = "TidyMergedData.txt", row.names = FALSE)
# step14-15: separate by subject by activity
splittedData = split(rawMerge, list(rawMerge$subj, rawMerge$activity))
# step16: average of splitted
subjAct = colMeans(splittedData[[1]])
for(i in 2:length(names(splittedData))){
  subjAct = rbind(subjAct, colMeans(splittedData[[i]]))
}
subjAct = data.frame(subjAct)
# step17: give descriptive name for activity
activity1index = grep(1, subjAct$activity)
subjAct$activity[activity1index] = "WALKING"
activity2index = grep(2, subjAct$activity)
subjAct$activity[activity2index] = "WALKING_UPSTAIRS"
activity3index = grep(3, subjAct$activity)
subjAct$activity[activity3index] = "WALKING_DOWNSTAIRS"
activity4index = grep(4, subjAct$activity)
subjAct$activity[activity4index] = "SITTING"
activity5index = grep(5, subjAct$activity)
subjAct$activity[activity5index] = "STANDING"
activity6index = grep(6, subjAct$activity)
subjAct$activity[activity6index] = "LAYING"
# step18: write to table subject activity averaged and fix names
names(train.data.frame) = c("subj", "activity", "x.mean.avg", "x.sd.avg", "body.acc.x.mean.avg", "body.acc.x.sd.avg", "body.acc.y.mean.avg", "body.acc.y.sd.avg", "body.acc.z.mean.avg", "body.acc.z.sd.avg", "body.gyro.x.mean.avg", "body.gyro.x.sd.avg", "body.gyro.y.mean.avg", "body.gyro.y.sd.avg", "body.gyro.z.mean.avg", "body.gyro.z.sd.avg", "total.acc.x.mean.avg", "total.acc.x.sd.avg", "total.acc.y.mean.avg", "total.acc.y.sd.avg", "total.acc.z.mean.avg", "total.acc.z.sd.avg")
write.table(subjAct, file = "TidySubjectActivityAveraged.txt", row.names = FALSE)