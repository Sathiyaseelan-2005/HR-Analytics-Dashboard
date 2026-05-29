-- Query 1 : Total Employees

SELECT COUNT(*) AS total_employees
FROM employee_attrition;


-- Query 2 : Attrition Distribution

SELECT Attrition,
       COUNT(*) AS employee_count
FROM employee_attrition
GROUP BY Attrition;


-- Query 3 : Attrition Rate KPI

SELECT ROUND(
       SUM(
           CASE
               WHEN Attrition = 'Yes' THEN 1
               ELSE 0
           END
       ) * 100.0 / COUNT(*),
       2
) AS attrition_rate
FROM employee_attrition;


-- Query 4 : Department-wise Attrition

SELECT Department,
       COUNT(*) AS attrition_count
FROM employee_attrition
WHERE Attrition = 'Yes'
GROUP BY Department
ORDER BY attrition_count DESC;


-- Query 5 : Overtime Impact Analysis

SELECT OverTime,
       COUNT(*) AS employees_left
FROM employee_attrition
WHERE Attrition = 'Yes'
GROUP BY OverTime;


-- Query 6 : Average Salary by Department

SELECT Department,
       ROUND(AVG(MonthlyIncome),2) AS avg_salary
FROM employee_attrition
GROUP BY Department
ORDER BY avg_salary DESC;


-- Query 7 : Salary Category Analysis Using CASE WHEN

SELECT EmployeeNumber,
       MonthlyIncome,
       CASE
           WHEN MonthlyIncome >= 15000 THEN 'High Salary'
           WHEN MonthlyIncome >= 8000 THEN 'Medium Salary'
           ELSE 'Low Salary'
       END AS salary_category
FROM employee_attrition;


-- Query 8 : Attrition by Salary Category

SELECT
    CASE
        WHEN MonthlyIncome >= 15000 THEN 'High Salary'
        WHEN MonthlyIncome >= 8000 THEN 'Medium Salary'
        ELSE 'Low Salary'
    END AS salary_category,

    COUNT(*) AS attrition_count

FROM employee_attrition
WHERE Attrition = 'Yes'
GROUP BY salary_category
ORDER BY attrition_count DESC;


-- Query 9 : Employee Age Group Classification

SELECT Age,
       CASE
           WHEN Age < 30 THEN 'Young Employees'
           WHEN Age BETWEEN 30 AND 45 THEN 'Mid Age Employees'
           ELSE 'Senior Employees'
       END AS age_group
FROM employee_attrition;


-- Query 10 : Attrition by Age Group

SELECT
    CASE
        WHEN Age < 30 THEN 'Young Employees'
        WHEN Age BETWEEN 30 AND 45 THEN 'Mid Age Employees'
        ELSE 'Senior Employees'
    END AS age_group,

    COUNT(*) AS attrition_count

FROM employee_attrition
WHERE Attrition = 'Yes'
GROUP BY age_group
ORDER BY attrition_count DESC;


-- Query 11 : Job Role Attrition Analysis

SELECT JobRole,
       COUNT(*) AS attrition_count
FROM employee_attrition
WHERE Attrition = 'Yes'
GROUP BY JobRole
ORDER BY attrition_count DESC;


-- Query 12 : Attrition by Job Satisfaction

SELECT JobSatisfaction,
       COUNT(*) AS attrition_count
FROM employee_attrition
WHERE Attrition = 'Yes'
GROUP BY JobSatisfaction
ORDER BY JobSatisfaction;


-- Query 13 : Ranking Departments by Attrition

SELECT Department,
       COUNT(*) AS attrition_count,
       RANK() OVER(
           ORDER BY COUNT(*) DESC
       ) AS dept_rank
FROM employee_attrition
WHERE Attrition = 'Yes'
GROUP BY Department;


-- Query 14 : CTE Analysis

WITH dept_attrition AS (

    SELECT Department,
           COUNT(*) AS attrition_count
    FROM employee_attrition
    WHERE Attrition = 'Yes'
    GROUP BY Department
)

SELECT *
FROM dept_attrition
WHERE attrition_count > (

    SELECT AVG(attrition_count)
    FROM dept_attrition
);


-- Query 15 : Average Monthly Income of Employees Leaving

SELECT ROUND(AVG(MonthlyIncome),2) AS avg_income_attrition
FROM employee_attrition
WHERE Attrition = 'Yes';


-- Query 16 : Workforce Distribution by Department

SELECT Department,
       COUNT(*) AS total_employees
FROM employee_attrition
GROUP BY Department
ORDER BY total_employees DESC;


-- Query 17 : Average Years at Company

SELECT ROUND(AVG(YearsAtCompany),2) AS avg_years
FROM employee_attrition;


-- Query 18 : Employees Leaving Early

SELECT
    CASE
        WHEN YearsAtCompany < 3 THEN 'Early Employees'
        ELSE 'Experienced Employees'
    END AS employee_type,

    COUNT(*) AS attrition_count

FROM employee_attrition
WHERE Attrition = 'Yes'
GROUP BY employee_type;


-- Query 19 : Top Paying Departments

SELECT Department,
       ROUND(AVG(MonthlyIncome),2) AS avg_salary,

       RANK() OVER(
           ORDER BY AVG(MonthlyIncome) DESC
       ) AS salary_rank

FROM employee_attrition
GROUP BY Department;