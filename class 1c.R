#### Code edited by Olutola Olasehinde 
# ----------------------------------------------------------------------------------------------------------------

# 1. Check Cholesterol level (using if) 
# Write an If statement to check cholesterol level is greater than 240, 
# if true, it will prints “High Cholesterol”

cholesterol <- 230

if (cholesterol > 240) {
  print("High Cholesterol")
}

# ----------------------------------------------------------------------------------------------------------------

# 2. Blood Pressure Status (using if...else)
# Write an if…else statement to check if blood pressure is normal.
# If it’s less than 120, print: “Blood Pressure is normal”
# If false then print: “Blood Pressure is high”

Systolic_bp <- 130
if (Systolic_bp < 120) {
  print("Blood Pressure is normal")
} else {
  print("Blood Pressure is high")
}
# ----------------------------------------------------------------------------------------------------------------

# 3. Automating Data Type Conversion with for loop

# Use patient_info.csv data and metadata.csv
# Perform the following steps separately on each dataset (patient_info.csv data and metadata.csv)
# Create a copy of the dataset to work on.
# Identify all columns that should be converted to factor type.
# Store their names in a variable (factor_cols).

# Example: factor_cols <- c("gender", "smoking_status")

# Use a for loop to convert all the columns in factor_cols to factor type.
# Pass factor_cols to the loop as a vector.

# Hint:
# for (col in factor_cols) {
#   data[[col]] <- as.factor(data[[col]])  # Replace 'data' with the name of your dataset
# }
patient_info_data <- read.csv("patient_info.csv")
data1 <- patient_info_data
str(data1)
factor_cols_data1 <- c("gender", "diagnosis", "smoker")

for (col in factor_cols_data1) { data1 [[col]] <- as.factor(data1[[col]])}


patient_metadata <- read.csv("Metadata.csv") 
data2 <- patient_metadata 
str(data2)
factor_cols_data2 <- c("height", "gender")

for (col in factor_cols_data2) { data2 [[col]] <- as.factor(data2[[col]])}
# ----------------------------------------------------------------------------------------------------------------

# 4. Converting Factors to Numeric Codes

# Choose one or more factor columns (e.g., smoking_status).
# Convert "Yes" to 1 and "No" to 0 using a for loop.

# Hint:
# binary_cols <- c("smoking_status")   # store column names in a vector
# use ifelse() condition inside the loop to replace Yes with 1 and No with 0
# for (col in binary_cols) {
#   data[[col]] <- # insert your ifelse() code here
# }

binary_cols_data1 <- c("smoker")  ### for data 1

for (col in binary_cols_data1) {
  data1[[col]] <- ifelse(as.character(data1[[col]]) == "Yes", 1,
                         ifelse(as.character(data1[[col]]) == "No", 0, NA))
}

str(data1)


binary_cols_data2 <- c("gender")  ### for data 2

for (col in binary_cols_data2) {
  data2[[col]] <- ifelse(as.character(data2[[col]]) == "Male", 1,
                         ifelse(as.character(data2[[col]]) == "Female", 0, NA))
}

str(data2)

# ----------------------------------------------------------------------------------------------------------------

#  Verification:
#    Compare the original and modified datasets to confirm changes.
#    str(original_data)
#    str(data)
 str(patient_info_data) ### original data 
 str(data1) ## revised data 
 
 
 patient_metadata ### original data
 str(data2) ## revised data 
# ----------------------------------------------------------------------------------------------------------------

# Final Note:
# All instructions are written as comments.
# For actual code execution, remove the # symbol from each line you want to run.

