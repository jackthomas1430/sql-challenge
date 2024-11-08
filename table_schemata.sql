CREATE TABLE departments (
    dept_no CHAR(4) PRIMARY KEY,
    dept_name VARCHAR(40) NOT NULL UNIQUE
);

CREATE TABLE titles (
    title_id CHAR(5) PRIMARY KEY,
    title VARCHAR(50) NOT NULL
);

CREATE TABLE employees (
    emp_no INT PRIMARY KEY,
    emp_title_id CHAR(5) NOT NULL,
    birth_date DATE NOT NULL,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    gender CHAR(1) NOT NULL,
    hire_date DATE NOT NULL,
    FOREIGN KEY (emp_title_id) REFERENCES titles(title_id)
);

CREATE TABLE salaries (
    emp_no INT PRIMARY KEY,
    salary INT NOT NULL,
    FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

CREATE TABLE dept_manager (
    dept_no CHAR(4),
    emp_no INT,
    PRIMARY KEY (dept_no, emp_no),
    FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
    FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

CREATE TABLE dept_emp (
    emp_no INT,
    dept_no CHAR(4),
    PRIMARY KEY (emp_no, dept_no),
    FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
    FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);

SELECT * FROM departments;
SELECT * FROM titles; 
SELECT * FROM employees;
SELECT * FROM salaries;
SELECT * FROM dept_manager;
SELECT * FROM dept_emp;