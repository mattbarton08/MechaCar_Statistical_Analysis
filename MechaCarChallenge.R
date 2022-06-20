library(dplyr)
library(tidyverse)

mecha_car<- read.csv(file='MechaCar_mpg.csv', check.names = F, stringsAsFactors = F)

lm(mpg~vehicle_length+vehicle_weight+spoiler_angle+ground_clearance+AWD,data=mecha_car)

summary(lm(mpg~vehicle_length+vehicle_weight+spoiler_angle+ground_clearance+AWD,data=mecha_car))

suspension_df<- read.csv(file='Suspension_Coil.csv', check.names = F, stringsAsFactors = F)

total_summary<- suspension_df %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI))

lot_summary<- suspension_df %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI))

                                            