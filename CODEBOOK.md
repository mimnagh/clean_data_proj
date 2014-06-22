Code book for run_analysis.R
========================================================

#Study Design
1. We merge all the training test data from the "Human Activity Recognition Using Smartphones Dataset" study.
2. Extracts only the measurements on the mean and standard deviation for each measurement.
3. Average each variable for each activity and each subject.

#Code Book
The "subjects" represents the anonymized id of the participent of the study. The "activityname" represents the name of the activiy they were performing during the measurements. The remaining columns represent measurements. In the spirit of "tidy" data I have named the fileds using the following template <domain>.<type>.<aggegation>[.<direction>]. The domain of the measurement can be either "time" or "frequency". "aggregation" can be either "mean" or "std". And "direction" may be supplied for directional quantities as "x", "y" or "z. The measurement "type" can be 

-bodyacc: Body (excluding gravity) Acceleration in standard gravity units 'g'
-gravityacc: Acceleration including gravity in standard gravity units 'g'
-bodyaccjerk: Jerk Body (excluding gravity) Acceleration in standard gravity units 'g', the body linear acceleration and angular velocity were derived in time to obtain Jerk signals.
-bodygyro: Body (excluding gravity) Angular Acceleration from the gryroscope in rad/sec^2 
-bodygyrojerk: Body Jerk (excluding gravity) Angular Acceleration from the gryroscope in rad/sec^2 
-bodyaccmag: Magnitude of the Body (excluding gravity) Acceleration in standard gravity units 'g'
-gravityaccmag: Magnitude of the acceleration including gravity in standard gravity units 'g'
-bodyaccjerkmag: Magnitude of the Jerk Body (excluding gravity) Acceleration in standard gravity units 'g'
-bodygyromag: Magnitude of the Body (excluding gravity) Angular Acceleration from the gryroscope in rad/sec^2
-bodygyrojerkmag: Magnitude of the Jerk Body (excluding gravity) Angular Acceleration from the gryroscope in rad/sec^2
-bodybodyaccjerkmag: Magnitude of the Jerk Body to Body (excluding gravity) Acceleration in standard gravity units 'g'
-bodybodygyromag: Magnitude of the Body to Body (excluding gravity) Angular Acceleration from the gryroscope in rad/sec^2
-bodybodygyrojerkmag: Magnitude of the Jerk Body to Body (excluding gravity) Angular Acceleration from the gryroscope in rad/sec^2

Some useful deatils from the study are outlined below.

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. See 'features_info.txt' for more details. 

For each record it is provided:
======================================

- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
- Triaxial Angular velocity from the gyroscope. 
- A 561-feature vector with time and frequency domain variables. 
- Its activity label. 
- An identifier of the subject who carried out the experiment.

Feature Selection 
=================

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals. These time domain signals  were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals. Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm. 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing frequency domain signals. 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.