import pandas as pd

# Load Dataset
df = pd.read_csv(r"E:\Student Performance Analytics System\Dataset\Student_Performance_Dataset.csv")

print("========== Student Performance Analysis ==========\n")

# Total Students
print("Total Students :", len(df))

# Average Percentage
print("Average Percentage :", round(df["Final_Percentage"].mean(), 2))

# Highest Percentage
print("Highest Percentage :", df["Final_Percentage"].max())

# Lowest Percentage
print("Lowest Percentage :", df["Final_Percentage"].min())

# Pass / Fail Count
print("\nPass / Fail Count")
print(df["Pass_Fail"].value_counts())

# Gender Count
print("\nGender Count")
print(df["Gender"].value_counts())

# Class-wise Average Percentage
print("\n========== Class-wise Average Percentage ==========")
print(df.groupby("Class")["Final_Percentage"].mean().round(2))