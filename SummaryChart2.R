# Thi Trang 
# Summary Chart 2

# Load the dataset
student_study_performance <- read.csv("exploratory-analysis-thitrang07/study_performance.csv")
View(student_study_performance)


# Creating a box plot for score distributions by lunch type
# Focus on readability and effective use of color
box_plot <- ggplot(student_study_performance, aes(x = lunch, y = math_score, fill = lunch)) +
  geom_boxplot(outlier.color = "red", outlier.shape = 8) +  # Highlight outliers in red
  labs(
    title = "Math Score Distribution by Lunch Type",
    x = "Type of Lunch",
    y = "Math Scores",
    fill = "Lunch Type"
  ) +
  scale_fill_manual(values = c("standard" = "#3498db", "free/reduced" = "#e74c3c")) +  # Use manual colors for clarity
  theme_minimal() +  # Minimalistic theme for clarity
  theme(legend.position = "right",  # Ensure the legend does not run off the page
        legend.title = element_text(face = "bold", size = 12),  # Enhance legend title readability
        legend.text = element_text(size = 10))  # Set size for legend texts

# Display the plot
print(box_plot)
