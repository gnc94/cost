if (!requireNamespace("readxl", quietly = TRUE)) install.packages("readxl")
library(readxl)

file_path <- "C:/Users/Dell/Desktop/user.xlsx"
if (!file.exists(file_path)) stop("File does not exist. Please check the file path.")
data <- read_excel(file_path)

if (!is.numeric(data$Salary)) stop("The 'Salary' column is not numeric. Please check your data.")
if (any(is.na(data$Salary))) stop("The 'Salary' column contains missing values. Please clean your data.")

test_one_sample <- t.test(data$Salary, mu = 30000)
cat("One-Sample t-Test Result:\n")
print(test_one_sample)

data$Group <- ifelse(data$Salary <= 30000, "Low", "High")
data$Group <- factor(data$Group)

if (length(unique(data$Group)) == 2 && all(table(data$Group) > 1)) {
  test_two_sample <- t.test(Salary ~ Group, data = data)
  cat("Two-Sample t-Test Result:\n")
  print(test_two_sample)
} else {
  cat("Two-Sample t-Test cannot be performed: One or both groups lack sufficient data.\n")
}

