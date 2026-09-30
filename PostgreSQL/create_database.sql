-- Create Table
CREATE TABLE student_performance (
    student_id VARCHAR(10) PRIMARY KEY,
    age INT,
    gender VARCHAR(10),
    class INT,
    study_hours_per_day DECIMAL(3,1),
    attendance_percentage INT,
    parental_education VARCHAR(30),
    internet_access VARCHAR(5),
    extracurricular_activities VARCHAR(5),
    math_score INT,
    science_score INT,
    english_score INT,
    previous_year_score INT,
    final_percentage DECIMAL(5,2),
    performance_level VARCHAR(15),
    pass_fail VARCHAR(5)
);

COPY student_performance
FROM 'E:\Student Performance Analytics System\Dataset\Student_Performance_Dataset.csv'
DELIMITER ','
CSV HEADER;


SELECT * FROM student_performance;