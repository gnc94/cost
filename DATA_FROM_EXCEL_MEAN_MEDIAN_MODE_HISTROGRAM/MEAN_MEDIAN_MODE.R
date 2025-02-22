# Install necessary packages (run only once)
install.packages("readxl") 
install.packages("dplyr") 
install.packages("modeest") 

# Load the required libraries
library(readxl) 
library(dplyr) 
library(modeest) 

# Read the Excel file
data <- read_excel("C:/Users/Dell/Desktop/user.xlsx") 

# Calculate statistics
mean_value <- mean(data$salary, na.rm = TRUE) # Mean (excluding NA values)
median_value <- median(data$salary, na.rm = TRUE) # Median (excluding NA values)
mode_value <- mfv(data$salary) # Mode using the `modeest` package
quartiles <- quantile(data$salary, probs = c(0.25, 0.5, 0.75), na.rm = TRUE) # Quartiles
range_value <- range(data$salary, na.rm = TRUE) # Range
iqr_value <- IQR(data$salary, na.rm = TRUE) # Interquartile Range (IQR)

# Print results
print(paste("Mean:", mean_value)) 
print(paste("Median:", median_value)) 
print(paste("Mode:", mode_value)) 
print("Quartiles:")
print(quartiles) 
print(paste("Range:", paste(range_value, collapse = " to "))) 
print(paste("IQR:", iqr_value)) 

# Plot Histogram
hist(data$salary, 
     main = "Histogram of Salary", 
     xlab = "Values", 
     col = "lightblue", 
     border = "black")