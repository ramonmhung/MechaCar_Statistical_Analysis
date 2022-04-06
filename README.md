# MechaCar_Statistical_Analysis

## Overview Of The Analysis 

- AutosRus' newest vehicle, the MechaCar is having production problems. Using simple regression analysis and t-test we will review the production data from AutoRUs' newest protoype and provide insights that could help the manufacturing team. Also an statistical study will be designed to compare the Mechacar performance againts the competition.

## Deliverable 1

![Alt Text](https://github.com/ramonmhung/MechaCar_Statistical_Analysis/blob/main/Resources%20/Regression.png)

The linear regression 

mpg = (6.267)vehicle_length + (0.0012)vehicle_weight + (0.0688)spoiler_angle + (3.546)ground_clearance + (-3.411)AWD - 104.0

- By interpreting the formula above: Vehicle lenght and ground clearance are statistically likely to produce non-random amounts of variance to the statistical model or probably are the most possible to affect the mpg performance on the car prototype.

- The model p-value of 5.35e-11 is lower than the 0.05 statistical significance. There's a prevalent evidence against the null hypothesis. We can accept the alternative hypothesis that the slope is not 0 

- The model r-squared value of 0.7149 translates that 71% of the variance in mpg predictions can be explained on the linear regression, while the rest is not. All variables in the regressions have a possitive association with mpg. This model could predict the mpg 

## Deliverable 2 

The specs of the MechaCar suspension coil dictates that the variance of the suspesion coils must not surpass 100 pounds per square inch. By observing at the PSI data for all manufactoring lots and the PSI summary provided below wwe can observe the variance of the suspension coils is 62.69 pounds per square inch. It does not exceed the design specifications of 100 pounds 

By breaking the manufactoring data of the three lots, its possible to observe that Lot 1 and 2 have variances of 0.98 and 7.47 that are below the design specification of 100 psi. Lot 3 has a much larger variance on 170.29 that's well above the design specification. Lot 3 variance is making the PSI variance of the total population to increase significantly 

![Alt Text](https://github.com/ramonmhung/MechaCar_Statistical_Analysis/blob/main/Resources%20/Total%20summary.png)
![Alt Text](https://github.com/ramonmhung/MechaCar_Statistical_Analysis/blob/main/Resources%20/3%20LOTS.png)

## Deliverable 3 

For this deliverable we'll conduct a t-test to determine if the PSI across all lots is statistically different from the population mean of 1.500 PSI and the test for each lot. 

The intial T-test was was used to determine if the PSI across all manufacturing lots is statistically differente from the population mean. The results showed that there was a sample mean of 1,498.78 and a p-value of 0.06. Since of p-value is highter than the assumend statistical significande we fail to reject the null hypothesis. PSI across all manufacturing lots is similar to population mean of 1500 PSI 

![Alt Text](https://github.com/ramonmhung/MechaCar_Statistical_Analysis/blob/main/Resources%20/T%20tests%20.png)

### Lot 1 

Results show that the sample mean is 1500 and the P value is 1. Technically there is no statistical difference from the population mean. We fail to reject the null hypothesis 

### Lot 2 

The mean is 1500.2 and the p-value 0.61. Since the p-value is much higher than the assumed statistical signicance of 0.05. We fail to reject the null hypothesis. 

### Lot 3

Results show a sample mean of 1496.14 and a p-value of 0.04. Because the p-value is lower than the statistical significance of 0.05. We reject the null hypothesis and accept the alternative hypothesis that the true mea is not 1500. There's a statistical difference between the population mean of 1500 PSI

## Deliverable 4 

In order to test MechaCar safety rating againts its competition we create the following null & alternative hyphotesis.

H0 (Null Hypothesis): MechaCar's vehicle safety ratings are no different from its competitors

Ha (Alternative Hypothesis): MechaCar's vehicle safety ratings are different from its competitors

We'll collect the safety ratings on MechaCar models as well as the competitors from the Insurance Institute for Highway Safety. Their scores are determined by 4 factors. Measurements from dummies, survival space, airbags and seat belf effectiveness. By using that data t-tests of the population of vehicles and each car company. This could help us determine MechaCar vehicle safety rating scores are different from all the competitors and then individually different from each competitor. 



