						CODE BOOK for the file	"filestep5.txt"


Content:

- GENERAL DESCRIPTION OF DOCUMENT
- RAW DATA
- VARIABLES IN RAW DATA
- THE TIDY DATA SET
- STUDY DESIGN


						- GENERAL DESCRIPTION OF DOCUMENT -		

Document about Data Set requested in Coursera "Getting and Cleaning Data" Course Project to process raw data into a tidy data set, raw data, tidy data and study design.



						- RAW DATA (Source of Data) -
		
Human Activity Recognition Using Smartphones Data Set (Data collected from the accelerometers from the Samsung Galaxy S smartphone)
Human Activity Recognition database built from the recordings of 30 subjects performing activities of daily living (ADL) 
while carrying a waist-mounted smartphone with embedded inertial sensors.
The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed
six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING), wearing a smartphone (Samsung Galaxy S II) 
on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity 
at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly
partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data.

REFERENCE
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

The data is packaged in a zip file "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
wich contains the records divided in files with the content described below, divided in a main folder with ativity levels, features and features info,
and two foldes wich contain the records (observations) from training and test data volunteers.

For each record in the dataset it is provided: 
- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration. 
- Triaxial Angular velocity from the gyroscope. 
- A 561-feature vector with time and frequency domain variables. 
- Its activity label. 
- An identifier of the subject who carried out the experiment.



						- VARIABLES IN RAW DATA 
			(available in dataframe "datastep1" when you run the script run_Analysis.R) 

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time
domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter
and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was
then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter
with a corner frequency of 0.3 Hz. Subsequently, the body linear acceleration and angular velocity were derived in time to obtain 
Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the
Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). Finally a Fast Fourier Transform (FFT)
was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, 
fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). These signals were used to estimate variables of the feature vector
for each pattern:  '-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

tBodyAcc-XYZ
tGravityAcc-XYZ
tBodyAccJerk-XYZ
tBodyGyro-XYZ
tBodyGyroJerk-XYZ
tBodyAccMag
tGravityAccMag
tBodyAccJerkMag
tBodyGyroMag
tBodyGyroJerkMag
fBodyAcc-XYZ
fBodyAccJerk-XYZ
fBodyGyro-XYZ
fBodyAccMag
fBodyAccJerkMag
fBodyGyroMag
fBodyGyroJerkMag

The set of VARIABLES that were estimated from these signals are:

mean(): Mean value
std(): Standard deviation
mad(): Median absolute deviation 
max(): Largest value in array
min(): Smallest value in array
sma(): Signal magnitude area
energy(): Energy measure. Sum of the squares divided by the number of values. 
iqr(): Interquartile range 
entropy(): Signal entropy
arCoeff(): Autorregresion coefficients with Burg order equal to 4
correlation(): correlation coefficient between two signals
maxInds(): index of the frequency component with largest magnitude
meanFreq(): Weighted average of the frequency components to obtain a mean frequency
skewness(): skewness of the frequency domain signal 
kurtosis(): kurtosis of the frequency domain signal 
bandsEnergy(): Energy of a frequency interval within the 64 bins of the FFT of each window.
angle(): Angle between to vectors.

Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle() variable:
gravityMean
tBodyAccMean
tBodyAccJerkMean
tBodyGyroMean
tBodyGyroJerkMean



						- THE TIDY DATA SET -
						 ("filestep5.txt")


The file contains the average of each variable measured for each activity (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING)
and each subject (30 subjects performing activities of daily living). 
ONLY the measurements on the MEAN and STANDARD DEVIATION for each measurement where selected, as requested in STEP 2 for the "Getting
and Cleaning Data" Course Project Script run_Analysis.R.

DATA IN THE TIDY DATA SET
180 rows containing the average of each variale measured for each subject in each activity.

VARIABLES IN THE TIDY DATA SET
-Activity
-Subject
86 Variables estimated from the signals (ONLY the measurements on the MEAN and STANDARD DEVIATION for each measurement where selected):

										
VARIABLE										DESCRIPTION EXAMPLE
[1] "subject"                                                		VOLUNTEER
 [2] "activity" 							WALKING, WALKING_UPSTAIRS...                                              
 [3] "TimeBodyAccelerometer.StandardDeviation.X" 			"Average of Measurement of Standar Deviation of Time from Body Accelerometer, in the X direction"             
 [4] "TimeBodyAccelerometer.StandardDeviation.Y"              
 [5] "TimeBodyAccelerometer.StandardDeviation.Z"              
 [6] "TimeGravityAccelerometer.StandardDeviation.X"           
 [7] "TimeGravityAccelerometer.StandardDeviation.Y"           
 [8] "TimeGravityAccelerometer.StandardDeviation.Z"           
 [9] "TimeBodyAccelerometerJerk.StandardDeviation.X"          
[10] "TimeBodyAccelerometerJerk.StandardDeviation.Y"          
[11] "TimeBodyAccelerometerJerk.StandardDeviation.Z"          
[12] "TimeBodyGyroscope.StandardDeviation.X"                  
[13] "TimeBodyGyroscope.StandardDeviation.Y"                  
[14] "TimeBodyGyroscope.StandardDeviation.Z"                  
[15] "TimeBodyGyroscopeJerk.StandardDeviation.X"              
[16] "TimeBodyGyroscopeJerk.StandardDeviation.Y"              
[17] "TimeBodyGyroscopeJerk.StandardDeviation.Z"              
[18] "TimeBodyAccelerometerMag.StandardDeviation"             
[19] "TimeGravityAccelerometerMag.StandardDeviation"          
[20] "TimeBodyAccelerometerJerkMag.StandardDeviation"         
[21] "TimeBodyGyroscopeMag.StandardDeviation"                 
[22] "TimeBodyGyroscopeJerkMag.StandardDeviation"             
[23] "FrecuencyBodyAccelerometer.StandardDeviation.X" 			"Average of Measurement of Standar Deviation of Frequency Domain Signal from Body Accelerometer, in the X direction"        
[24] "FrecuencyBodyAccelerometer.StandardDeviation.Y"         
[25] "FrecuencyBodyAccelerometer.StandardDeviation.Z"         
[26] "FrecuencyBodyAccelerometerJerk.StandardDeviation.X"     
[27] "FrecuencyBodyAccelerometerJerk.StandardDeviation.Y"     
[28] "FrecuencyBodyAccelerometerJerk.StandardDeviation.Z"     
[29] "FrecuencyBodyGyroscope.StandardDeviation.X"             
[30] "FrecuencyBodyGyroscope.StandardDeviation.Y"             
[31] "FrecuencyBodyGyroscope.StandardDeviation.Z"             
[32] "FrecuencyBodyAccelerometerMag.StandardDeviation"        
[33] "FrecuencyBodyBodyAccelerometerJerkMag.StandardDeviation"
[34] "FrecuencyBodyBodyGyroscopeMag.StandardDeviation"        
[35] "FrecuencyBodyBodyGyroscopeJerkMag.StandardDeviation"    
[36] "TimeBodyAccelerometer.mean...X" 					"Average of Measurement of Mean of Time from Body Accelerometer, in the X direction"                                     
[37] "TimeBodyAccelerometer.mean...Y"                         
[38] "TimeBodyAccelerometer.mean...Z"                         
[39] "TimeGravityAccelerometer.mean...X"                      
[40] "TimeGravityAccelerometer.mean...Y"                      
[41] "TimeGravityAccelerometer.mean...Z"                      
[42] "TimeBodyAccelerometerJerk.mean...X"                     
[43] "TimeBodyAccelerometerJerk.mean...Y"                     
[44] "TimeBodyAccelerometerJerk.mean...Z"                     
[45] "TimeBodyGyroscope.mean...X"                             
[46] "TimeBodyGyroscope.mean...Y"                             
[47] "TimeBodyGyroscope.mean...Z"                             
[48] "TimeBodyGyroscopeJerk.mean...X"                         
[49] "TimeBodyGyroscopeJerk.mean...Y"                         
[50] "TimeBodyGyroscopeJerk.mean...Z"                         
[51] "TimeBodyAccelerometerMag.mean.."                        
[52] "TimeGravityAccelerometerMag.mean.."                     
[53] "TimeBodyAccelerometerJerkMag.mean.."                    
[54] "TimeBodyGyroscopeMag.mean.."                            
[55] "TimeBodyGyroscopeJerkMag.mean.."                        
[56] "FrecuencyBodyAccelerometer.mean...X"                    
[57] "FrecuencyBodyAccelerometer.mean...Y"                    
[58] "FrecuencyBodyAccelerometer.mean...Z"                    
[59] "FrecuencyBodyAccelerometer.meanFreq...X"                
[60] "FrecuencyBodyAccelerometer.meanFreq...Y"                
[61] "FrecuencyBodyAccelerometer.meanFreq...Z"                
[62] "FrecuencyBodyAccelerometerJerk.mean...X"                
[63] "FrecuencyBodyAccelerometerJerk.mean...Y"                
[64] "FrecuencyBodyAccelerometerJerk.mean...Z"                
[65] "FrecuencyBodyAccelerometerJerk.meanFreq...X"            
[66] "FrecuencyBodyAccelerometerJerk.meanFreq...Y"            
[67] "FrecuencyBodyAccelerometerJerk.meanFreq...Z"            
[68] "FrecuencyBodyGyroscope.mean...X"                        
[69] "FrecuencyBodyGyroscope.mean...Y"                        
[70] "FrecuencyBodyGyroscope.mean...Z"                        
[71] "FrecuencyBodyGyroscope.meanFreq...X"                    
[72] "FrecuencyBodyGyroscope.meanFreq...Y"                    
[73] "FrecuencyBodyGyroscope.meanFreq...Z"                    
[74] "FrecuencyBodyAccelerometerMag.mean.."                   
[75] "FrecuencyBodyAccelerometerMag.meanFreq.."               
[76] "FrecuencyBodyBodyAccelerometerJerkMag.mean.."           
[77] "FrecuencyBodyBodyAccelerometerJerkMag.meanFreq.."       
[78] "FrecuencyBodyBodyGyroscopeMag.mean.."                   
[79] "FrecuencyBodyBodyGyroscopeMag.meanFreq.."               
[80] "FrecuencyBodyBodyGyroscopeJerkMag.mean.."               
[81] "FrecuencyBodyBodyGyroscopeJerkMag.meanFreq.."           
[82] "angle.TimeBodyAccelerometerMean.gravity."               
[83] "angle.TimeBodyAccelerometerJerkMean..gravityMean."      
[84] "angle.TimeBodyGyroscopeMean.gravityMean."               
[85] "angle.TimeBodyGyroscopeJerkMean.gravityMean."           
[86] "angle.X.gravityMean."                                   
[87] "angle.Y.gravityMean."                                   
[88] "angle.Z.gravityMean." 



								- STUDY DESIGN -


TRANSFORMATIONS PERFORMED TO GO FROM RAW DATA TO THE OUTPUT DATA SET ("filestep5.txt"). Note: the completed commands are in ("run_Analysis.R") script.
NOTE: THE DOCUMENT README.md EXPLAINS HOW TO RUN THE "run_Analysis.R" SCRIPT STEP BY STEP FROM THE GITHUB REPOSITORY.

					GENERAL STEPS OF STUDY DESIGN, PERFORMED BY "run_Analysis.R"

0.- OPEN R STUDIO R version 3.2.2 (2015-08-14)
1.- INSTALL NECESSARY PACKAGES
2.- DOWNLOAD ZIP FILE FROM WEB
3.- UNZIP FILES TO WORKING DIRECTORY FOLDER
4.- READ DATA FROM UNZIPED FILES ABOUT TEST DATA
4a.-READ DATA FROM .TXT FILE WITH THE RECORDS OF THE DATA SET
4b.-READ DATA FROM .TXT FILE WITH THE NAMES OF THE VARIABLES FROM THE DATA SET
4c.-READ DATA FROM .TXT FILE ABOUT THE SUBJECTS
4e.-READ DATA FROM .TXT FILE ABOUT THE ACTIVITIES AND RENAME ACTIVITIES, AS THEY ARE ORIGINAL VALUES FROM 1 TO 6 INSTEAD OF WALKING, WALKING_UPSTAIRS, ETC...
4e.-MERGED DATA FROM THE FILES ABOUT TEST DATA (RECORDS, VARIABLE NAMES, SUBJECTS AND ACTIVITIES)
5.- STEPS 4 REPEATS FOR THE FILES ABOUT TRAIN DATA
6.- MERGES THE TRAINING AND TEST SETS TO CREATE ONE DATA SET (END OF STEP_1 OF SCRIPT)
7.- EXTRACTS ONLY THE MEASUREMENTS ON THE MEAN AND STANDARD DEVIATION FOR EACH MEASURMENT (END OF STEP_2 OF SCRIPT)
8.- AT THIS POINT RENAME ACTIVITIES WAS ALREADY PERFORMED IN STEP 7 OF THIS PROCEDURE (END OF STEP_3 OF SCRIPT) 
9.- APPROPIATELY LABEL THE DATA SET WITH DESCRIPTIVE VARIALE NAMES, A few changes were made like changing t for time, f for frequecy, Acc for Accelometer, etc. (END OF STEP_4 OF SCRIPT)
10.-FROM THE DATA SET IN STEP 4, CREATES A SECOND, INDEPENDENT TYDY DATA SET, WITH THE AVERAGE OF EACH VARIABLE FOR EACH ACTIVITY AND EACH SUBJECT, This was made with the sumarize_each function in R
11.-SAVE RESULT INTO A TXT.FILE "filestep5.txt"	(END OF STEP_5 OF SCRIPT)



