
# Load necessary libraries
library(ggplot2)

# Generate visualizations
avg_duration_plot <- ggplot(summary_stats, aes(x = member_casual, y = average_duration, fill = member_casual)) +
  geom_bar(stat = 'identity', color = 'black', size = 0.5) +
  labs(title = 'Average Trip Duration by User Type', subtitle = 'Comparison of Average Trip Duration Between Casual Riders and Annual Members') +
  theme_minimal()

# Save visualization
ggsave('D:/Pharmacy_Projects/Cyclistic_Bike_Share_Analysis/Cyclistic_Case_Study/visualizations/avg_trip_duration.png', plot = avg_duration_plot)

