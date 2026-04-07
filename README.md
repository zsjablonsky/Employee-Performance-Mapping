# Employee-Performance-Mapping
A career simulation to showcase SQL databasing and analysis skills.

# 🧬 ScienceQtech Employee Performance Mapping — SQL

![SQL](https://img.shields.io/badge/SQL-MySQL-blue) ![Domain](https://img.shields.io/badge/Domain-Data%20Science%20HR%20Analytics-green) ![Status](https://img.shields.io/badge/Status-Complete-brightgreen)

## 📌 Project Overview

ScienceQtech is a Data Science startup operating across high-impact domains including fraud detection, market basket analysis, self-driving vehicles, supply chain optimization, algorithmic early detection of lung cancer, customer sentiment analysis, and drug discovery.

This project involves designing and querying an employee database to support the HR department in performance mapping, compensation analysis, and training planning — enabling data-driven decisions across the organization.

---

## 🎯 Objectives

- Analyze employee records and extract data based on department, role, and project assignment
- Map employee performance using manager-submitted ratings
- Identify maximum salary thresholds and validate that all job roles meet organizational profile standards
- Calculate employee bonuses to project additional compensation costs
- Flag employees requiring training to improve overall organizational performance

---

## 🗄️ Database Schema

The database consists of three core tables:

| Table | Description |
|---|---|
| `employee` | Employee ID, name, role, department, salary, and experience |
| `proj_table` | Project ID, name, and domain (e.g. fraud detection, drug discovery) |
| `emp_record_table` | Performance ratings, manager ID, project assignment, and EMP status |

---

## 🔍 Key Analyses

- Employee details filtered by performance rating and department
- Maximum salary per role and department
- Bonus calculation based on salary and performance rating
- Job role validation against organizational salary standards
- Identification of employees due for training based on experience and rating
- Project-level employee headcount and role distribution

---

## 📁 Repository Structure

```
scienceqtech-employee-analysis/
├── data/
│   └── data_science_team.csv
│   └── proj_table.csv
│   └── emp_record_tabele.csv
├── queries/
│   ├── employee_details.sql
│   ├── employee_bonus.sql
│   ├── employee_performance_tables.sql
│   ├── employee_performance_scores.sql
│   ├── experience_rank.sql
│   ├── finance_employees.sql
│   ├── first_name_index.sql
│   ├── healthcare_finance.sql
│   ├── management.sql
│   ├── max_min_salary.sql
│   ├── salary_by_country.sql
│   ├── salary_distribution_country.sql
│   ├── standard_check.sql
│   └── ten_year_exp.sql
├── README.md
├── Results.pdf
├── gitignore
└── schema.sql
```

---

## 🛠️ Tools & Technologies

- **Database:** MySQL
- **Concepts used:** Joins, Subqueries, Aggregate Functions, Window Functions, Stored Procedures, Views, Indexes

---

## ▶️ How to Run

```sql
-- 1. Set up the database
mysql -u root -p < schema.sql

-- 2. Run any analysis
mysql -u root -p employees_db < queries/employee_details.sql
```

---

## 💡 Key Findings

- All employees met the requirements of their position
- Bonus costs were calculated as a percentage of salary weighted by performance rating
- Salaries across different countries were assesed to ensure proper compensation was provided

---

## 👤 Author

**Zahra Jablonsky** — [LinkedIn](https://linkedin.com/in/zahrajablonsky) 
