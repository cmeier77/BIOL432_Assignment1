library(dplyr) 
packageVersion("dplyr") #1.1.4

#read in measurements
measurements_1 <- read.csv("measurements.csv")

#calculate volume in cm^3
measurements_2 <- measurements %>% 
  mutate(Volume = pi * (Limb_width / 2)^2 * Limb_length)

#save measurement csv file
write.csv(measurements_2, "measurements1.csv", row.names = FALSE)

