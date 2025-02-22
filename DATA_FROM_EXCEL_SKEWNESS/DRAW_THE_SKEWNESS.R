# Install required packages (run only once)
install.packages("readxl") 
install.packages("e1071") 
install.packages("ggplot2") 

# Load the required libraries
library(readxl) 
library(e1071) 
library(ggplot2) 

# Read the Excel file (update the file path as needed)
data <- read_excel("C:/Users/janealam/Downloads/user.xlsx", sheet = 1) 

# Extract the numerical column (e.g., salary)
numerical_data <- data$salary 

# Calculate skewness
skew_value <- skewness(numerical_data) 
cat("Skewness of the salary:", skew_value, "\n") 

# Create a histogram using ggplot2
ggplot(data, aes(x = numerical_data)) + 
  geom_histogram(binwidth = 1, color = "black", fill = "lightblue") + 
  labs(
    title = paste("Histogram of", "salary", "\nSkewness:", round(skew_value, 2)),
    x = "Values",
    y = "Frequency"
  )
