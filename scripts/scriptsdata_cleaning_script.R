
# Load necessary libraries
library(dplyr)

# Load the datasets
divvy_2019 <- read.csv('D:/Pharmacy_Projects/Cyclistic_Case_Study/data_raw/Divvy_Trips_2019_Q1.xlsx')
divvy_2020 <- read.csv('D:/Pharmacy_Projects/Cyclistic_Case_Study/data_raw/Divvy_Trips_2020_Q1.xlsx')

# Clean and transform datasets as needed
divvy_2019 <- divvy_2019 %>%
  rename(started_at = start_time, ended_at = end_time, member_casual = usertype) %>%
  mutate(started_at = as.POSIXct(started_at, format='%Y-%m-%d %H:%M:%S', tz='UTC'),
         ended_at = as.POSIXct(ended_at, format='%Y-%m-%d %H:%M:%S', tz='UTC'))

divvy_2020 <- divvy_2020 %>%
  rename(member_casual = rideable_type) %>%
  mutate(started_at = as.POSIXct(started_at, format='%Y-%m-%d %H:%M:%S', tz='UTC'),
         ended_at = as.POSIXct(ended_at, format='%Y-%m-%d %H:%M:%S', tz='UTC'))

# Combine datasets
divvy_combined <- rbind(divvy_2019, divvy_2020)

# Save cleaned data
write.csv(divvy_combined, 'D:/Pharmacy_Projects/Cyclistic_Bike_Share_Analysis/Cyclistic_Case_Study/Cleaned_Data/divvy_combined_cleaned.csv', row.names = FALSE)

