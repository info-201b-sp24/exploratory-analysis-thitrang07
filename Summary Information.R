# Audrey Phan
# Summary Information

# Load Packages 

library(tidyverse)
library(dplyr)

# Load data

student_study_performance <- read.csv("Downloads/study_performance.csv")
View(student_study_performance)

# Pull the student with the lowest test scores
student_lowest_scores <- student_study_performance %>%
  filter(math_score == max(math_score)) %>%
  filter(reading_score == max(reading_score)) %>%
  filter(writing_score == max(writing_score)) %>%
  