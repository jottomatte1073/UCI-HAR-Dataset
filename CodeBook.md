CodeBook for Tidy UCI HAR Dataset
=================================

This CodeBook describes the data contained in the output of the "run_analysis.R" script contained in this repository.
The script genertates a combined subset of the original dataset by extracting mean and standard deviation features.
This combined subset contains 10299 observations and 88 variables including subject and activity.
Features of the subset are transformed to more descriptive variables. and the subset is grouped by subject, activity
pairs, then summarised with mean. Lastly, tidy dataset is created by gathering the features of the subset.
The tidy dataset contains 15480 observations and 4 variables.

##Description of the tidy dataset's variables
> The tidy dataset contains 15480 observations and 4 variables

* subject
* activity
* measurements
* mean

###subject
A numeric identifier(1-30) of the subject who carried out the experiment.

###activity

* laying
* sitting
* standing
* walking
* walking_downstairs
* walking_upstairs

###measurements
                                            
* time-body-acceleration-mean-x                       time-body-acceleration-mean-y                     
* time-body-acceleration-mean-z                       time-body-acceleration-std-x                       
* time-body-acceleration-std-y                        time-body-acceleration-std-z                       
* time-gravity-acceleration-mean-x                    time-gravity-acceleration-mean-y                   
* time-gravity-acceleration-mean-z                    time-gravity-acceleration-std-x                    
* time-gravity-acceleration-std-y                     time-gravity-acceleration-std-z                    
* time-body-acceleration-jerk-mean-x                  time-body-acceleration-jerk-mean-y                 
* time-body-acceleration-jerk-mean-z                  time-body-acceleration-jerk-std-x                  
* time-body-acceleration-jerk-std-y                   time-body-acceleration-jerk-std-z                  
* time-body-gyro-mean-x                               time-body-gyro-mean-y                              
* time-body-gyro-mean-z                               time-body-gyro-std-x                               
* time-body-gyro-std-y                                time-body-gyro-std-z                               
* time-body-gyro-jerk-mean-x                          time-body-gyro-jerk-mean-y                         
* time-body-gyro-jerk-mean-z                          time-body-gyro-jerk-std-x                          
* time-body-gyro-jerk-std-y                           time-body-gyro-jerk-std-z                          
* time-body-acceleration-magnitude-mean               time-body-acceleration-magnitude-std               
* time-gravity-acceleration-magnitude-mean            time-gravity-acceleration-magnitude-std            
* time-body-acceleration-jerk-magnitude-mean          time-body-acceleration-jerk-magnitude-std          
* time-body-gyro-magnitude-mean                       time-body-gyro-magnitude-std                       
* time-body-gyro-jerk-magnitude-mean                  time-body-gyro-jerk-magnitude-std                  
* frequency-body-acceleration-mean-x                  frequency-body-acceleration-mean-y                 
* frequency-body-acceleration-mean-z                  frequency-body-acceleration-std-x                  
* frequency-body-acceleration-std-y                   frequency-body-acceleration-std-z                 
* frequency-body-acceleration-meanfreq-x              frequency-body-acceleration-meanfreq-y             
* frequency-body-acceleration-meanfreq-z              frequency-body-acceleration-jerk-mean-x            
* frequency-body-acceleration-jerk-mean-y             frequency-body-acceleration-jerk-mean-z            
* frequency-body-acceleration-jerk-std-x              frequency-body-acceleration-jerk-std-y             
* frequency-body-acceleration-jerk-std-z              frequency-body-acceleration-jerk-meanfreq-x        
* frequency-body-acceleration-jerk-meanfreq-y         frequency-body-acceleration-jerk-meanfreq-z        
* frequency-body-gyro-mean-x                          frequency-body-gyro-mean-y                         
* frequency-body-gyro-mean-z                          frequency-body-gyro-std-x                          
* frequency-body-gyro-std-y                           frequency-body-gyro-std-z                          
* frequency-body-gyro-meanfreq-x                      frequency-body-gyro-meanfreq-y                     
* frequency-body-gyro-meanfreq-z                      frequency-body-acceleration-magnitude-mean         
* frequency-body-acceleration-magnitude-std           frequency-body-acceleration-magnitude-meanfreq     
* frequency-body-acceleration-jerk-magnitude-mean     frequency-body-acceleration-jerk-magnitude-std     
* frequency-body-acceleration-jerk-magnitude-meanfreq frequency-body-gyro-magnitude-mean                 
* frequency-body-gyro-magnitude-std                   frequency-body-gyro-magnitude-meanfreq             
* frequency-body-gyro-jerk-magnitude-mean             frequency-body-gyro-jerk-magnitude-std             
* frequency-body-gyro-jerk-magnitude-meanfreq         angle(tbody-accelerationmean,gravity)              
* angle(tbody-acceleration-jerkmean),gravitymean)     angle(tbody-gyromean,gravitymean)                  
* angle(tbody-gyro-jerkmean,gravitymean)              angle(x,gravitymean)                               
* angle(y,gravitymean) 

###mean
The average of the measurement
