# HR Analytics Dashboard | Employee Attrition Analysis

## Project Overview

This project focuses on analyzing employee attrition patterns and workforce trends using SQL, Power BI, and DAX. The objective of the project is to identify key business factors influencing employee turnover and provide data-driven insights for improving employee retention strategies.

The dashboard was developed to help HR teams and business managers understand workforce behavior, attrition trends, overtime impact, salary distribution, job satisfaction, and departmental performance through interactive visual analytics.

---

# Objectives

1. Analyze employee attrition trends across departments
2. Identify factors influencing employee turnover
3. Evaluate overtime impact on employee retention
4. Analyze salary distribution and workforce demographics
5. Build interactive dashboards for HR decision-making
6. Generate business insights using SQL and Power BI

---

# Tools & Technologies Used

1. SQL
2. MySQL
3. Power BI
4. DAX
5. Data Visualization
6. Business Intelligence
7. HR Analytics

---

# Dataset Information

The dataset contains detailed HR employee records used for workforce attrition analysis and business intelligence reporting.

## Dataset Summary

1. Total Employees: **1,470**
2. Total Attrition Count: **237 Employees**
3. Overall Attrition Rate: **16.12%**
4. Average Monthly Salary: **₹6.5K**
5. Number of Departments: **3**
6. Employee Age Range: **18 to 60 Years**
7. Dataset Type: **HR Employee Attrition Dataset**

---

# Dataset Features

1. Employee Number
2. Employee Age
3. Gender
4. Department
5. Job Role
6. Monthly Income
7. Overtime Status
8. Job Satisfaction
9. Marital Status
10. Education Field
11. Years at Company
12. Work Experience
13. Attrition Status

---

# SQL Concepts Used

1. SELECT Statements
2. Aggregate Functions
3. GROUP BY
4. HAVING Clause
5. CASE WHEN Statements
6. Common Table Expressions (CTEs)
7. Window Functions
8. RANK()
9. Filtering & Sorting
10. Business KPI Analysis

---

# DAX Measures Used

## Total Employees

```DAX id="5n0r7a"
Total Employees =
COUNT(employee_attrition[EmployeeNumber])
```

## Attrition Count

```DAX id="mp6k2v"
Attrition Count =
CALCULATE(
    COUNT(employee_attrition[Attrition]),
    employee_attrition[Attrition] = "Yes"
)
```

## Attrition Rate

```DAX id="x8v5pm"
Attrition Rate =
DIVIDE(
    [Attrition Count],
    [Total Employees],
    0
)
```

## Average Salary

```DAX id="z2q7kr"
Average Salary =
AVERAGE(employee_attrition[MonthlyIncome])
```

## Employees Left

```DAX id="g4t1wn"
Employees Left =
CALCULATE(
    COUNT(employee_attrition[EmployeeNumber]),
    employee_attrition[Attrition] = "Yes"
)
```

---

# Dashboard Features

1. KPI Cards
2. Department-wise Attrition Analysis
3. Overtime Impact Analysis
4. Salary Distribution Analysis
5. Job Satisfaction Analysis
6. Age Group Analysis
7. Interactive Slicers
8. Business Insights Section

---

# Key Business Insights

1. The organization consisted of approximately **1,470 employees** with an overall attrition rate of **16.12%**.

2. Around **237 employees** left the organization, indicating significant workforce turnover.

3. The **Research & Development department** recorded the highest employee attrition among all departments.

4. Employees working overtime demonstrated noticeably higher attrition compared to employees without overtime.

5. Younger employees below the age of **30 years** showed higher attrition trends than experienced employees.

6. Employees with lower job satisfaction levels contributed significantly to workforce turnover.

7. The average employee salary across departments was approximately **₹6.5K per month**.

8. Salary distribution varied across departments and influenced employee retention patterns.

9. Workforce analytics identified overtime, salary, job satisfaction, and department performance as major factors impacting employee attrition.

---

# Recommendations

1. Improve employee engagement strategies in high-attrition departments.
2. Reduce excessive overtime workload.
3. Strengthen employee retention programs for younger employees.
4. Improve workplace satisfaction and employee experience.
5. Review compensation and workforce planning strategies.

---

# Project Outcome

The project successfully identified major workforce attrition patterns and delivered business insights through interactive dashboards and SQL analysis. The dashboard supports data-driven HR decision-making and demonstrates practical skills in SQL, Power BI, DAX, data visualization, and business analytics.

The analysis revealed that approximately **237 employees** left the organization, resulting in an attrition rate of **16.12%**. Research & Development recorded the highest employee turnover, while overtime employees and younger workforce groups demonstrated higher attrition trends. Job satisfaction and salary distribution were identified as major factors influencing employee retention and workforce stability.

The project demonstrates strong capabilities in:

* Data Cleaning & Analysis
* Advanced SQL Querying
* Business Intelligence Reporting
* Power BI Dashboard Development
* DAX Measure Creation
* HR Analytics & Workforce Analysis
* Data Visualization & Storytelling

---

# Folder Structure

```text id="1m4t8x"
HR-Analytics-Dashboard/
│
├── dataset/
├── sql/
├── dashboard/
├── screenshots/
├── report/
└── README.md
```

---

# Dashboard Preview

(Add dashboard screenshots here)

---

# Author
Swetha
