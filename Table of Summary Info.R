# Thi Trang
# Table of Summary Information

# Load packages
library(dplyr)
library(readxl)
library(here)

# Load Data
student_study_performance <- read.csv("Desktop/INFO201/study_performance.csv")
View(student_study_performance)

# Order of parental level of education
education_levels <- c("some high school", "high school", "some college", 
                      "associate's degree", "bachelor's degree", "master's degree")

# Create an aggregated table
aggregated_table <- student_study_performance %>%
  group_by(parental_level_of_education) %>%
  summarise(
    Count = n(),
    Avg_Math_Score = round(mean(math_score, na.rm = TRUE), 2),
    Avg_Reading_Score = round(mean(reading_score, na.rm = TRUE), 2),
    Avg_Writing_Score = round(mean(writing_score, na.rm = TRUE), 2),
    Max_Math_Score = max(math_score, na.rm = TRUE),
    Min_Math_Score = min(math_score, na.rm = TRUE),
    Max_Reading_Score = max(reading_score, na.rm = TRUE),
    Min_Reading_Score = min(reading_score, na.rm = TRUE),
    Max_Writing_Score = max(writing_score, na.rm = TRUE),
    Min_Writing_Score = min(writing_score, na.rm = TRUE),
    Prop_Test_Prep_Completed = round(mean(test_preparation_course == "completed", na.rm = TRUE), 2)
  ) %>%
  arrange(parental_level_of_education)


# Print the table
print(aggregated_table)
