# Install and load necessary libraries
install.packages("readxl") 
install.packages("dplyr") 
library(readxl) 
library(dplyr) 

# Read data from the Excel file
data <- read_excel("C:/Users/Dell/Desktop/user.xlsx") 

# Perform a One-Sample t-Test if 'salary' column exists
if ("salary" %in% colnames(data)) { 
  test_one_sample <- t.test(data$salary, mu = 30000) 
  print("One-Sample t-Test Results:") 
  print(test_one_sample) 
} else { 
  print("Column 'salary' does not exist.") 
} 

# Perform a Two-Sample t-Test if 'salary' column exists
if ("salary" %in% colnames(data)) { 
  data$Group <- ifelse(data$salary <= 30000, "Low", "High") 
  data$Group <- factor(data$Group) 
  test_two_sample <- t.test(salary ~ Group, data = data) 
  print("Two-Sample t-Test Results:") 
  print(test_two_sample) 
} else { 
  print("Column 'salary' does not exist.") 
} 

# Perform a Chi-Square Test if 'department' and 'Group' columns exist
if (all(c("department", "Group") %in% colnames(data))) { 
  table_data <- table(data$department, data$Group) 
  test_chi_square <- chisq.test(table_data) 
  print("Chi-Squared Test Results:") 
  print(test_chi_square) 
} else { 
  print("Columns 'department' and/or 'Group' do not exist.") 
} 

