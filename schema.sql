-- Creates employees database
CREATE DATABASE IF NOT EXISTS employees_db;
USE employees_db;

-- Contains all employees
CREATE TABLE IF NOT EXISTS emp_record
	(emp_id VARCHAR(10) PRIMARY KEY ,
	first_name VARCHAR(45),
	last_name VARCHAR(45),
	gender VARCHAR(6),
	role VARCHAR(45),
	dept VARCHAR(45),
	exp INT,
	country VARCHAR(45),
	continent VARCHAR(45),
	salary INT,
	emp_rating INT,
	manager_id VARCHAR(10),
	project_id VARCHAR(10),
    FOREIGN KEY (project_id) REFERENCES proj_table(project_id)
    );

-- Contains all employees in the Data Science team
CREATE TABLE IF NOT EXISTS data_science_team 
	(emp_id VARCHAR(10),
    FOREIGN KEY (emp_id) REFERENCES emp_record(emp_id),
	first_name VARCHAR(45),
	last_name VARCHAR(45),
	gender VARCHAR(6),
	role VARCHAR(45),
	dept VARCHAR(45),
	exp INT,
	country VARCHAR(45),
	continent VARCHAR(45)
    );

-- contains information about the projects
CREATE TABLE IF NOT EXISTS proj_table
	(project_id VARCHAR(10) PRIMARY KEY,
	proj_name VARCHAR(45),
	domain VARCHAR(45),
	start_date TEXT,
	closure_date TEXT,
	dev_qtr VARCHAR(2),
	status VARCHAR(45)
    );

