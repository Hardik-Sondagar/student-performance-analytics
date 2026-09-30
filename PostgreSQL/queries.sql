-- Query 1 : Total Number of Students
SELECT COUNT(*) AS total_students
FROM student_performance;

-- Query 2 : Pass and Fail Students
SELECT pass_fail,
       COUNT(*) AS total_students
FROM student_performance
GROUP BY pass_fail;

-- Query 3 : Gender Wise Students
SELECT gender,
       COUNT(*) AS total_students
FROM student_performance
GROUP BY gender;

-- Query 4 : Average Final Percentage
SELECT ROUND(AVG(final_percentage), 2) AS average_percentage
FROM student_performance;

-- Query 5 : Highest and Lowest Percentage
SELECT MAX(final_percentage) AS highest_percentage,
       MIN(final_percentage) AS lowest_percentage
FROM student_performance;

-- Query 6 : Average Percentage by Class
SELECT class,
       ROUND(AVG(final_percentage), 2) AS average_percentage
FROM student_performance
GROUP BY class
ORDER BY class;

-- Query 7 : Students with Attendance Above 90%
SELECT student_id,
       attendance_percentage,
       final_percentage
FROM student_performance
WHERE attendance_percentage > 90;

-- Query 8 : Top 10 Students
SELECT student_id,
       final_percentage
FROM student_performance
ORDER BY final_percentage DESC
LIMIT 10;

-- Query 9 : Students Above Average Percentage
SELECT student_id,
       final_percentage
FROM student_performance
WHERE final_percentage >
(
    SELECT AVG(final_percentage)
    FROM student_performance
);

-- Query 10 : Attendance Category using CASE
SELECT student_id,
       attendance_percentage,
       CASE
           WHEN attendance_percentage >= 90 THEN 'Excellent'
           WHEN attendance_percentage >= 75 THEN 'Good'
           ELSE 'Needs Improvement'
       END AS attendance_status
FROM student_performance;