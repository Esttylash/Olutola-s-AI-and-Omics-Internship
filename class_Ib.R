# --------------------------------------------------------------------------
#### Tasks with anwsers by Olutola Olasehinde ####

# 1. Set Working Directory
# Create a new folder on your computer "AI_Omics_Internship_2025".

getwd()
setwd("C:\\Users\\CUBRE\\Downloads\\Data Science Training\\AI bioinformatics and machine learning program\\AI_Omics_Internship_2025")

# 2. Create Project Folder
# In RStudio, create a new project named "Module_I" in your "AI_Omics_Internship_2025" folder.
# Inside the project directory, create the following subfolders using R code:
# raw_data, clean_data, scripts, results or Tasks, plots etc

dir.create("raw_data")  
dir.create("clean_data")  
dir.create("scripts")  
dir.create("results or Tasks")
dir.create("plots etc")  
# ---------------------------------------------------------------------------
# 3. Download "patient_info.csv" dataset from GitHub repository

# load the dataset into your R environment
patient_info <- read.csv(file.choose())

# Inspect the structure of the dataset using appropriate R functions
View(patient_info)
str(patient_info)

# Identify variables with incorrect or inconsistent data types.
str(patient_info) #variables with incorrect data types are gender, diagnosis, and smoker.

# Convert variables to appropriate data types where needed
patient_info$gender_fac <- as.factor(patient_info$gender)
str(patient_info)

patient_info$diagnosis_fac <- as.factor(patient_info$diagnosis)
str(patient_info)

patient_info$smoker_fac <- as.factor(patient_info$smoker)
str(patient_info)

# Create a new variable for smoking status as a binary factor:

# 1 for "Yes", 0 for "No"
patient_info$smoker_num <- ifelse(patient_info$smoker_fac == "Yes", 1, 0)
class(patient_info$smoker_num)

patient_info$smoker_num <- as.factor(patient_info$smoker_num)
class(patient_info$smoker_num)

# Save the cleaned dataset in your clean_data folder with the name patient_info_clean.csv
write.csv(patient_info, file = "clean_data/patient_info_clean.csv")


# Save your R script in your script folder with name "class_Ib"

# Upload "class_Ib" R script into your GitHub repository
