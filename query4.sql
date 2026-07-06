--create table emoloyees
CREATE TABLE EMPLOYEES (
    EMP_ID CHAR(9) NOT NULL, 
    F_NAME VARCHAR(15) NOT NULL,
    L_NAME VARCHAR(15) NOT NULL,
    SSN CHAR(9),
    B_DATE DATE,
    SEX CHAR,
    ADDRESS VARCHAR(30),
    JOB_ID CHAR(9),
    SALARY DECIMAL(10,2),
    MANAGER_ID CHAR(9),
    DEP_ID CHAR(9) NOT NULL,
    PRIMARY KEY (EMP_ID));
 
 INSERT INTO EMPLOYEES
 VALUES
('E1001','John','Thomas',123456,1976-09-01,'M',"5631 Rice, OakPark,IL",100,100000,30001,2),
('E1002','Alice','James',123457,1972-07-31,'F',"980 Berry ln, Elgin,IL",200,80000,30002,5),
('E1003','Steve','Wells',123458,1980-10-08,'M',"291 Springs, Gary,IL",300,50000,30002,5),
('E1004','Santosh','Kumar',123459,1985-07-20,'M',"511 Aurora Av, Aurora,IL",400,60000,30002,5),
('E1005','Ahmed','Hussain',123410,1981-04-01,'M',"216 Oak Tree, Geneva,IL",500,70000,30001,2),
('E1006','Nancy','Allen',123411,1978-06-02,'F',"111 Green Pl, Elgin,IL",600,90000,30001,2),
('E1007','Mary','Thomas',123412,1975-05-05,'F',"100 Rose Pl, Gary,IL",650,65000,30003,7),
('E1008','Bharath','Gupta',123413,1985-06-05,'M',"145 Berry Ln, Naperville,IL",660,65000,30003,7),
('E1009','Andrea','Jones',123414,1990-09-07,'F',"120 Fall Creek, Gary,IL",234,70000,30003,7),
('E1010','Ann','Jacob',123415,1982-03-30,'F',"111 Britany Springs,Elgin,IL",220,70000,30002,5);
SELECT * FROM EMPLOYEES;

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
