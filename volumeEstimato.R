library(dplyr)

#read in measurements
measurements <- read.csv("measurements.csv")

#calculate volume in cm^3
measurements <- measurements %>% 
  select(-X) %>%
  mutate(Volume = pi * (Limb_width / 2)^2 * Limb_length)

write.csv(measurements, "measurements.csv", row.names = FALSE)

