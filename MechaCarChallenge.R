library(dplyr)
library(tidyverse)

mecha_car<- read.csv(file='MechaCar_mpg.csv', check.names = F, stringsAsFactors = F)

lm(mpg~vehicle_length+vehicle_weight+spoiler_angle+ground_clearance+AWD,data=mecha_car)

summary(lm(mpg~vehicle_length+vehicle_weight+spoiler_angle+ground_clearance+AWD,data=mecha_car))

suspension_df<- read.csv(file='Suspension_Coil.csv', check.names = F, stringsAsFactors = F)

total_summary<- suspension_df %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI))

lot_summary<- suspension_df %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI))

t.test(log10(suspension_df$PSI),mu=mean(log10(suspension_df$PSI)))

psi_lot1<- suspension_df %>% filter(Manufacturing_Lot=='Lot1')
psi_lot2<- suspension_df %>% filter(Manufacturing_Lot=='Lot2')
psi_lot3<- suspension_df %>% filter(Manufacturing_Lot=='Lot3')

t.test(log10(psi_lot1$PSI),mu=mean(log10(suspension_df$PSI)))
t.test(log10(psi_lot2$PSI),mu=mean(log10(suspension_df$PSI)))
t.test(log10(psi_lot3$PSI),mu=mean(log10(suspension_df$PSI)))


                                            