# Load the dataset
student_study_performance <- read.csv("exploratory-analysis-thitrang07/study_performance.csv")
View(student_study_performance)

#Test preperation vs average test score 
library(ggplot2)
library(dplyr)
library(readr)

# Calculate the average scores
data <- student_study_performance  %>%
  mutate(average_score = (math_score + reading_score + writing_score) / 3)

  

ggplot(student_study_performance) +
  geom_histogram(mapping = aes(
    x = test_preparation_course, y = data
  ))


# Create the histogram based on test preparation status
ggplot(data, aes(x = average_score, fill = test_preparation_course)) +
  geom_histogram(binwidth = 5, position = "dodge", alpha = 0.7,color = 'black') +
  labs(title = "Average Test Scores Based on Test Preparation",
       x = "Test Preparation",
       y = "Average Score",
       fill = "Test Preparation Performance") +
  theme_minimal()

