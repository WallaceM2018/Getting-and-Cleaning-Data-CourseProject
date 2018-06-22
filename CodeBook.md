# Getting and Cleaning Data: Coursera Course Project Code Book

This code book modifies and updates the available code books with the data to indicate all the 
variables and summaries calculated, along with units, and other relevant information.

This code book pertains to the data set found in the tidy_data.txt file.


## Data Overview

The tidy_data.txt file is a text file with space-separated values.

The first row in the data set provides the names of the variables, which are described below.


## Variables

Each row contains 79 averaged signal measurements, grouped by subject and activity.

### Identifiers

* subject
	Identifier for the experiment volunteers (integer, 1:30)
	
* activity
	Identifier for the daily living actiivites (strings, self-explanatory)
	
	* WALKING (value 1)
	* WALKING_UPSTAIRS (value 2)
	* WALKING_DOWNSTAIRS (value 3)
	* SITTING (value 4)
	* STANDING (value 5)
	* LAYING (value 6)
	
### Measurement Averages

All measurements are floating-point values, normalized and bounded within [-1,1].
                                                    
* time.Body.Accelerometer.Mean.X                              
* time.Body.Accelerometer.Mean.Y                               
* time.Body.Accelerometer.Mean.Z                               
* time.Body.Accelerometer.StandardDeviation.X                 
* time.Body.Accelerometer.StandardDeviation.Y                  
* time.Body.Accelerometer.StandardDeviation.Z                  
* time.Gravity.Accelerometer.Mean.X                           
* time.Gravity.Accelerometer.Mean.Y                            
* time.Gravity.Accelerometer.Mean.Z                            
* time.Gravity.Accelerometer.StandardDeviation.X              
* time.Gravity.Accelerometer.StandardDeviation.Y               
* time.Gravity.Accelerometer.StandardDeviation.Z               
* time.Body.Accelerometer.Jerk.Mean.X                         
* time.Body.Accelerometer.Jerk.Mean.Y                          
* time.Body.Accelerometer.Jerk.Mean.Z                          
* time.Body.Accelerometer.Jerk.StandardDeviation.X            
* time.Body.Accelerometer.Jerk.StandardDeviation.Y             
* time.Body.Accelerometer.Jerk.StandardDeviation.Z             
* time.Body.Gyroscope.Mean.X                                  
* time.Body.Gyroscope.Mean.Y                                   
* time.Body.Gyroscope.Mean.Z                       
* time.Body.Gyroscope.StandardDeviation.X                     
* time.Body.Gyroscope.StandardDeviation.Y                      
* time.Body.Gyroscope.StandardDeviation.Z                      
* time.Body.Gyroscope.Jerk.Mean.X                             
* time.Body.Gyroscope.Jerk.Mean.Y                              
* time.Body.Gyroscope.Jerk.Mean.Z                  
* time.Body.Gyroscope.Jerk.StandardDeviation.X                
* time.Body.Gyroscope.Jerk.StandardDeviation.Y                 
* time.Body.Gyroscope.Jerk.StandardDeviation.Z                 
* time.Body.Accelerometer.Magnitude.Mean                       
* time.Body.Accelerometer.Magnitude.StandardDeviation          
* time.Gravity.Accelerometer.Magnitude.Mean        
* time.Gravity.Accelerometer.Magnitude.StandardDeviation       
* time.Body.Accelerometer.Jerk.Magnitude.Mean       
* time.Body.Accelerometer.Jerk.Magnitude.StandardDeviation     
* time.Body.Gyroscope.Magnitude.Mean                   
* time.Body.Gyroscope.Magnitude.StandardDeviation              
* time.Body.Gyroscope.Jerk.Magnitude.Mean           
* time.Body.Gyroscope.Jerk.Magnitude.StandardDeviation         
* frequency.Body.Accelerometer.Mean.X                         
* frequency.Body.Accelerometer.Mean.Y                          
* frequency.Body.Accelerometer.Mean.Z                    
* frequency.Body.Accelerometer.StandardDeviation.X            
* frequency.Body.Accelerometer.StandardDeviation.Y             
* frequency.Body.Accelerometer.StandardDeviation.Z             
* frequency.Body.Accelerometer.MeanFrequency.X                
* frequency.Body.Accelerometer.MeanFrequency.Y                 
* frequency.Body.Accelerometer.MeanFrequency.Z                 
* frequency.Body.Accelerometer.Jerk.Mean.X                    
* frequency.Body.Accelerometer.Jerk.Mean.Y                     
* frequency.Body.Accelerometer.Jerk.Mean.Z                     
* frequency.Body.Accelerometer.Jerk.StandardDeviation.X       
* frequency.Body.Accelerometer.Jerk.StandardDeviation.Y        
* frequency.Body.Accelerometer.Jerk.StandardDeviation.Z        
* frequency.Body.Accelerometer.Jerk.MeanFrequency.X           
* frequency.Body.Accelerometer.Jerk.MeanFrequency.Y            
* frequency.Body.Accelerometer.Jerk.MeanFrequency.Z            
* frequency.Body.Gyroscope.Mean.X                             
* frequency.Body.Gyroscope.Mean.Y                              
* frequency.Body.Gyroscope.Mean.Z                              
* frequency.Body.Gyroscope.StandardDeviation.X                
* frequency.Body.Gyroscope.StandardDeviation.Y                 
* frequency.Body.Gyroscope.StandardDeviation.Z                 
* frequency.Body.Gyroscope.MeanFrequency.X                    
* frequency.Body.Gyroscope.MeanFrequency.Y                     
* frequency.Body.Gyroscope.MeanFrequency.Z                   
* frequency.Body.Accelerometer.Magnitude.Mean      
* frequency.Body.Accelerometer.Magnitude.StandardDeviation     
* frequency.Body.Accelerometer.Magnitude.MeanFrequency         
* frequency.Body.Accelerometer.Jerk.Magnitude.Mean    
* frequency.Body.Accelerometer.Jerk.Magnitude.StandardDeviation
* frequency.Body.Accelerometer.Jerk.Magnitude.MeanFrequency    
* frequency.Body.Gyroscope.Magnitude.Mean          
* frequency.Body.Gyroscope.Magnitude.StandardDeviation         
* frequency.Body.Gyroscope.Magnitude.MeanFrequency             
* frequency.Body.Gyroscope.Jerk.Magnitude.Mean     
* frequency.Body.Gyroscope.Jerk.Magnitude.StandardDeviation    
* frequency.Body.Gyroscope.Jerk.Magnitude.MeanFrequency      
* angle(time.Body.Accelerometer.Mean,gravity)         
* angle(time.Body.Accelerometer.Jerk.Mean,gravity.Mean)        
* angle(time.Body.Gyroscope.Mean,gravity.Mean)             
* angle(time.Body.Gyroscope.Jerk.Mean,gravity.Mean)            
* angle(X,gravity.Mean)                                        
* angle(Y,gravity.Mean)                                        
* angle(Z,gravity.Mean) 