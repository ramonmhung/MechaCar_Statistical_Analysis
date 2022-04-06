# Load dplyr
library(dplyr)

# Import and Read MechaCar_mpg.csv file
mpg_results <- read.csv(file = '/Users/ramonmanrique/Desktop/MechaCar_Statistical_Analysis/MechaCar_mpg.csv',check.names = F,stringsAsFactors = F)

#linear regression model
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=mpg_results) 

#determine p-value, r-squared
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=mpg_results)) 

# Import and Read Suspension Coil .csv
Susp_coil_results <- read.csv(file = '/Users/ramonmanrique/Desktop/MechaCar_Statistical_Analysis/Suspension_Coil.csv',check.names = F,stringsAsFactors = F)

#create summary table with multiple columns
total_summary <- Susp_coil_results %>% summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),SD=sd(PSI), .groups = 'keep') 
lot_summary <- Susp_coil_results %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),SD=sd(PSI), .groups = 'keep') 

#T-test comparing all lots to population
t.test((Susp_coil_results$PSI),mu=1500)

#Subset T-test per lot
lot1 <- subset(Susp_coil_results, Susp_coil_results$Manufacturing_Lot == "Lot1")
t.test((lot1$PSI), mu = 1500)

lot2 <- subset(Susp_coil_results, Susp_coil_results$Manufacturing_Lot == "Lot2")
t.test((lot2$PSI), mu = 1500)

lot3 <- subset(Susp_coil_results, Susp_coil_results$Manufacturing_Lot == "Lot3")
t.test((lot3$PSI), mu = 1500)

