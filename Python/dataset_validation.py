import pandas as pd

# Read Dataset
df = pd.read_csv(r"E:\Student Performance Analytics System\Dataset\Student_Performance_Dataset.csv")

# First 5 Rows
print(df.head())

# Dataset Information
print("\n---------- Dataset Information ----------")
df.info()

# Dataset Shape
print("\n---------- Dataset Shape ----------")
print(df.shape)

# Missing Values
print("\n---------- Missing Values ----------")
print(df.isnull().sum())

# Duplicate Records
print("\n---------- Duplicate Records ----------")
print(df.duplicated().sum())
