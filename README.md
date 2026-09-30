# Student Performance Analytics System

An end-to-end data analytics project examining student performance metrics using SQL (PostgreSQL), Python, and Power BI.

## 📌 Project Overview
This system analyzes student academic records to uncover key trends impacting performance, such as study habits, attendance, and socioeconomic factors.

## 🛠️ Tech Stack
- **Database:** PostgreSQL
- **Data Processing & EDA:** Python (Pandas, NumPy, Matplotlib/Seaborn)
- **Visualization:** Power BI
- **Version Control:** Git & GitHub

## 📁 Repository Structure
- `Dataset/` – Source CSV data.
- `PostgreSQL/` – Database setup scripts (`create_database.sql`) and analysis queries (`queries.sql`).
- `Python/` – Data validation and exploratory data analysis scripts.
- `Power BI/` – Interactive dashboard report file (`.pbix`).
- `Screenshots/` – Visual preview of the Power BI dashboard.

## 🚀 How to Run / Reproduce

### 1. Database Setup
1. Open PostgreSQL (pgAdmin or psql).
2. Execute `PostgreSQL/create_database.sql` to create tables.
3. Load `Dataset/Student_Performance_Dataset.csv` into the database.
4. Run `PostgreSQL/queries.sql` for analytical query results.

### 2. Python Setup
```bash
pip install pandas 
python Python/dataset_validation.py
python Python/data_analysis.py
