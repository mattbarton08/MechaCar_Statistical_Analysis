# MechaCar Statistical Analysis


## Linear Regression to Predict MPG

### Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?

The two variables that were found to be statistically signifcant compared to miles per gallon were vehicle length and ground clearance.

### Is the slope of the linear model considered to be zero? Why or why not?
Because the P-value is 5.35e-11 which is much smaller than 0.05%, the slope of the linear model is not considered to be zero.

### Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?
The R-Squared value is 0.7149, which shows us that it does a fairly good job of predicting the mpg of MechaCar prototypes.

## Summary Statistics on Suspension Coils

### The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. Does the current manufacturing data meet this design specification for all manufacturing lots in total and each lot individually? Why or why not?

Overall, the data does meet this specification because as we can see here the variance from the total summary frame is 62.3.
![summary_psi](https://i.imgur.com/PyIO4zh.png) <br>

Each lot, however, does not meet this specification. We can see that the variance in lot 3 is much higher than the other two lots, and does not fall under 100 pounds per square inch. <br>
![lot_psi](https://i.imgur.com/DUyM0eK.png)) <br>

## T-Tests on Suspension Coils

From the T-tests, we can see that lot 3 is statisically similar to the total mean of 1500. Lots 1 and 2 are statisically different from the total mean. The <br>
![ttests](https://i.imgur.com/DTcLrTC.png)

## Study Design: MechaCar vs Competition
One study that could be done to compare MechaCar vehicles vs the competition would be a comparison of their fuel effieciencies. I would do a two-sample t-test to compare the distribution means of MechaCar vehicles' mpg and a competitor vehicles' mpg. The null hypothesis would be that the two samples are statiscally different. To run this test, we would need to obtain miles per gallon data for a competitor's vehicles. 
