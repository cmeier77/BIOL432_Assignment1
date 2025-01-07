#Assignment 1: creating random datasets

#Question 1

#create a list of 5 random species name
Canines_5 <- c("CanisFamiliaris", "CanisLupus", "CanisLatrans", "VulpesVulpes", "VulpesLagopus")  

#sample from the Canines_5 vector a new vector of 100 random ones
#Use set seed for all the randoming sampling to get the same results each time
set.seed(2)
CanineTypes <- sample(Canines_5, 100, replace = TRUE)

#Question 2
#create a vector called Limb_width that is 100 rows long and has min and max values between 3-8cm
set.seed(10)
Limb_width <- runif(100, min = 3, max = 8)

#Question 3
#create a vector called Limb_length that is 100 rows long and has min and max values between 40-60cm
set.seed(15)
Limb_length <- runif(100, min = 30, max = 60)

#Question 4
#create a vector of 3 names to randomly sample from
observer_options <- c("Bella", "Grace", "Chris")

#sample from the three to make a vector 100 rows long
set.seed(30)
Observer <- sample(observer_options, 100, replace = TRUE)

#Question 5
#put all vectors into a dataframe
measurements_df <- data.frame(CanineTypes, Limb_width, Limb_length, Observer)

#Make csv
#write to csv
write.csv(measurements_df, "measurements.csv")
