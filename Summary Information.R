# Audrey Phan
# Summary Information

# Load Packages 

library(tidyverse)
library(dplyr)

# Load data

student_study_performance <- read.csv("Downloads/study_performance.csv")
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


