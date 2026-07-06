--use the table EMPLOYEES create in queries4

--retrieve all employee records whose salary is lower than the average salary
SELECT * FROM EMPLOYEES
WHERE SALARY < (SELECT AVG(SALARY) FROM EMPLOYEES);

--retrieves all employee records with EMP_ID, SALARY, and maximum salary as MAX_SALARY in every row
SELECT EMP_ID, SALARY, (SELECT MAX(SALARY) FROM EMPLOYEES) FROM EMPLOYEES;

--extract the first and last names of the oldest employee
SELECT F_NAME, L_NAME FROM EMPLOYEES
WHERE B_DATE = (SELECT MIN(B_DATE) FROM EMPLOYEES);

--average salary of the top 5 earners in the company
SELECT AVG(SALARY)
FROM
(SELECT SALARY FROM EMPLOYEES ORDER BY SALARY DESC LIMIT 5);

--find the average salary of the five least-earning employees
SELECT AVG(SALARY) FROM
(SELECT SALARY FROM EMPLOYEES ORDER BY SALARY LIMIT 5);

--records of employees older than the average age of all employees
SELECT * FROM EMPLOYEES
WHERE STRFTIME('%Y',B_DATE) < (SELECT AVG(STRFTIME('%Y',B_DATE) FROM EMPLOYEES);