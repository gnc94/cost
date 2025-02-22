# Load necessary libraries
library(readxl)
library(ggplot2)

# Read the Excel file
data <- read_excel("C:/Users/janealam/Downloads/user.xlsx")

# Extract salary and experience data
salary_data <- data$salary
experience_data <- data$experience

# Build a linear regression model
model <- lm(salary ~ experience, data = data)

# Display the summary of the regression model
summary(model)

# Create a scatter plot with a regression line
ggplot(data, aes(x = experience, y = salary)) +
  geom_point(color = "blue") +                     # Scatter plot of the data
  geom_smooth(method = "lm", se = FALSE, color = "red") + # Regression line
  labs(
    title = "Linear Regression: Salary vs Experience",
    x = "Experience (years)",
    y = "Salary"
  ) +
  theme_minimal()

