# Audrey Phan
# This script creates a bar chart of the averages between men and women
# students in their writing, reading, and math scores.

# Import Packages 
library(tidyverse)
library(dplyr)

# Load data
student_study_performance <- read.csv("Downloads/study_performance.csv")

# Get average scores by gender
avg_scores <- student_study_performance %>%
  group_by(gender) %>%
  summarise(
    avg_math = mean(math_score, na.rm = TRUE),
    avg_reading = mean(reading_score, na.rm = TRUE),
    avg_writing = mean(writing_score, na.rm = TRUE)
  )

avg_scores_long <- avg_scores %>%
  pivot_longer(cols = starts_with("avg"),
               names_to = "subject",
               values_to = "avg_score")

# Make bar plot
ggplot(data = avg_scores_long, aes(x = subject, y = avg_score, fill = gender)) +
  geom_bar(stat = "identity", position = position_dodge()) +
  labs(
    title = "Average Writing, Math, and Reading Test Scores by Gender",
    x = "Subject",
    y = "Average Score",
    fill = "Gender"
  ) +
  scale_x_discrete(labels = c("avg_math_score" = "Math", 
                              "avg_reading_score" = "Reading", 
                              "avg_writing_score" = "Writing")) +
  scale_fill_manual(values = c("male" = "blue", "female" = "pink")) +
  theme_minimal()
