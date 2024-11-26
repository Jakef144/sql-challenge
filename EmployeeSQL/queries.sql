SELECT 
    e.emp_no,
    e.last_name,
    e.first_name,
    e.sex,
    s.salary
FROM 
    employees e
JOIN 
    salaries s
ON 
    e.emp_no = s.emp_no;

SELECT 
    first_name,
    last_name,
    hire_date
FROM 
    employees
WHERE 
    hire_date BETWEEN '1986-01-01' AND '1986-12-31'
ORDER BY hire_date;

SELECT 
    dm.dept_no,
    d.dept_name,
    dm.emp_no AS manager_emp_no,
    e.last_name,
    e.first_name
FROM 
    dept_manager dm
JOIN 
    departments d
ON 
    dm.dept_no = d.dept_no
JOIN 
    employees e
ON 
    dm.emp_no = e.emp_no;

SELECT 
    de.dept_no,
    e.emp_no,
    e.last_name,
    e.first_name,
    d.dept_name
FROM 
    dept_emp de
JOIN 
    employees e
ON 
    de.emp_no = e.emp_no
JOIN 
    departments d
ON 
    de.dept_no = d.dept_no
ORDER BY de.dept_no;

SELECT 
    first_name,
    last_name,
    sex
FROM 
    employees
WHERE 
    first_name = 'Hercules'
    AND last_name LIKE 'B%';

SELECT 
    e.emp_no,
    e.last_name,
    e.first_name,
    d.dept_name
FROM 
    dept_emp de
JOIN 
    employees e
ON 
    de.emp_no = e.emp_no
JOIN 
    departments d
ON 
    de.dept_no = d.dept_no
WHERE 
    de.dept_no = 'd007'
ORDER BY e.emp_no;

SELECT 
    e.emp_no,
    e.last_name,
    e.first_name,
    d.dept_name
FROM 
    dept_emp de
JOIN 
    employees e
ON 
    de.emp_no = e.emp_no
JOIN 
    departments d
ON 
    de.dept_no = d.dept_no
WHERE 
    de.dept_no IN ('d007', 'd005')
ORDER BY d.dept_name, e.emp_no;

SELECT 
    last_name,
    COUNT(*) AS frequency
FROM 
    employees
GROUP BY 
    last_name
ORDER BY 
    frequency DESC;