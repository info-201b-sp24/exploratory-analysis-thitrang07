# Audrey Phan
# Summary Information

# Install packages
install.packages("readxl")
install.packages("here")

# Load Packages 
library(tidyverse)
library(dplyr)
library(readxl)
library(here)


# Load data

student_study_performance <- read.csv("exploratory-analysis-thitrang07/study_performance.csv")
View(student_study_performance)


# Pull the gender of the student with the highest test scores
gender_highest_scores <- student_study_performance %>%
  filter(math_score == max(math_score)) %>%
  filter(reading_score == max(reading_score)) %>%
  filter(writing_score == max(writing_score)) %>%
  pull(gender)

# Pull the gender of the student with the lowest test scores
gender_lowest_scores <- student_study_performance %>%
  filter(math_score == min(math_score)) %>%
  filter(reading_score == min(reading_score)) %>%
  filter(writing_score == min(writing_score)) %>%
  pull(gender)

# Pull the parental education level education of the student with the highest test scores
parentlvl_highest_scores <- student_study_performance %>%
  filter(math_score == max(math_score)) %>%
  filter(reading_score == max(reading_score)) %>%
  filter(writing_score == max(writing_score)) %>%
  pull(parental_level_of_education)

# Pull the parental education level of the student with the lowest test scores
parentlvl_lowest_scores <- student_study_performance %>%
  filter(math_score == min(math_score)) %>%
  filter(reading_score == min(reading_score)) %>%
  filter(writing_score == min(writing_score)) %>%
  pull(parental_level_of_education)

# Pull the race ethnicity of the student with the highest test scores
race_highest_scores <- student_study_performance %>%
  filter(math_score == max(math_score)) %>%
  filter(reading_score == max(reading_score)) %>%
  filter(writing_score == max(writing_score)) %>%
  pull(race_ethnicity)

# Pull the race ethnicity of the student with the lowest test scores
race_lowest_scores <- student_study_performance %>%
  filter(math_score == min(math_score)) %>%
  filter(reading_score == min(reading_score)) %>%
  filter(writing_score == min(writing_score)) %>%
  pull(race_ethnicity)

# Calcualte the average scores
summary_avg_math_score <- round(mean(student_study_performance$math_score, na.rm = TRUE), 2)
summary_avg_reading_score <- round(mean(student_study_performance$reading_score, na.rm = TRUE), 2)
summary_avg_writing_score <- round(mean(student_study_performance$writing_score, na.rm = TRUE), 2)



