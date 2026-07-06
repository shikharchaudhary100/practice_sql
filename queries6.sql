--retrieve the first names F_NAME and last names L_NAME of all employees who live in Elgin, IL
SELECT F_NAME, L_NAME FROM EMPLOYEES
WHERE ADDRESS LIKE "%Elgin,IL%";

--retrieve the first names F_NAME and last names L_NAME of all employees who were born during the 70s
SELECT F_NAME, L_NAME FROM EMPLOYEES
WHERE B_DATE LIKE "197%";

--retrieve all employee records in department 5 where salary is between 60000 and 70000
SELECT * FROM EMPLOYEES
WHERE SALARY BETWEEN 60000 AND 70000 AND DEP_ID=5;

--retrieve a list of employees ordered by department ID
SELECT * FROM EMPLOYEES
ORDER BY DEP_ID;

--retrieve a list of employees ordered by department ID and then in descending alphabetical order by last name
SELECT * FROM EMPLOYEES
ORDER BY DEP_ID DESC, L_NAME DESC;

--retrieve the number of employees in the department
SELECT DEP_ID, COUNT(*) FROM EMPLOYEES
GROUP BY DEP_ID;

--for each department, retrieve the number of employees in the department and the average employee salary in the department
SELECT DEP_ID, COUNT(*), AVG(SALARY) FROM EMPLOYEES
GROUP BY DEP_ID;

--appropriate labels for the columns of data retrieved in the last problem 
SELECT DEP_ID, COUNT(*) AS NUM_EMPLOYEES, AVG(SALARY) AS AVG_SALARY FROM EMPLOYEES
GROUP BY DEP_ID;

--sort the result of the previous query by average salary
SELECT DEP_ID, COUNT(*) AS NUM_EMPLOYEES, AVG(SALARY) AS AVG_SALARY FROM EMPLOYEES
GROUP BY DEP_ID ORDER BY AVG_SALARY;

--retieve the number of employees 
SELECT DEP_ID, COUNT(*) FROM EMPLOYEES
GROUP BY DEP_ID HAVING SALARY>=80000;

--list of all employees, first and last names, whose first names start with 'S'
SELECT DEP_ID, F_NAME, L_NAME FROM EMPLOYEES
WHERE F_NAME LIKE "S%";

--Arrange all the records of the EMPLOYEES table in ascending order of the date of birth
SELECT * FROM EMPLOYEES
ORDER BY B_DATE;

--Group the records in terms of the department IDs and filter them of ones that have average salary more than or equal to 60000
SELECT * FROM EMPLOYEES
GROUP BY DEP_ID HAVING AVG(SALARY) >= 60000;

--For the problem above, sort the results for each group in descending order of average salary
SELECT * FROM EMPLOYEES
GROUP BY DEP_ID 
HAVING AVG(SALARY) >= 60000
ORDER BY AVG(SALARY) DESC;

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
