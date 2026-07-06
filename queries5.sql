--create a table PETRESCUE
CREATE TABLE PETRESCUE (
	ID INTEGER NOT NULL,
	ANIMAL VARCHAR(20),
	QUANTITY INTEGER,
	COST DECIMAL(6,2),
	RESCUEDATE DATE,
	PRIMARY KEY (ID)
	);

INSERT INTO PETRESCUE VALUES
	(1,'Cat',9,450.09,'2018-05-29'),
	(2,'Dog',3,666.66,'2018-06-01'),
	(3,'Dog',1,100.00,'2018-06-04'),
	(4,'Parrot',2,50.00,'2018-06-04'),
	(5,'Dog',1,75.75,'2018-06-10'),
	(6,'Hamster',6,60.60,'2018-06-11'),
	(7,'Cat',1,44.44,'2018-06-11'),
	(8,'Goldfish',24,48.48,'2018-06-14'),
	(9,'Dog',2,222.22,'2018-06-15');
SELECT * FROM PETRESCUE;

--calculates the total cost of all animal rescues and label it
SELECT SUM(COST) AS SUM_OF_COST FROM PETRESCUE;

--displays the maximum quantity of animals rescued
SELECT MAX(QUANTITY) AS MAXIMUM_RESCUE FROM PETRESCUE;

----displays the minimum quantity of animals rescued
SELECT MIN(QUANTITY) AS MINIMUM_RESCUE FROM PETRESCUE; 

--displays the average cost of animals rescued
SELECT AVG(COST) AS AVERAGE_COST FROM PETRESCUE;

--displays the rounded cost of each rescue upto 1 decimal point
SELECT ROUND(COST,1) FROM PETRESCUE;

--displays the length of each animal name
SELECT LENGTH(ANIMAL) FROM PETRESCUE;

--displays the animal name in each rescue in uppercase
SELECT UPPER(ANIMAL) FROM PETRESCUE;

--displays the animal name in each rescue in lowercase
SELECT LOWER(ANIMAL) FROM PETRESCUE;

--displays the rescue day, month and year seperately
SELECT STRFTIME('%D',RESCUEDATE) FROM PETRESCUE;
SELECT STRFTIME('%M',RESCUEDATE) FROM PETRESCUE;
SELECT STRFTIME('%Y',RESCUEDATE) FROM PETRESCUE;

--displays the after 3 days date of each rescue
SELECT DATE(RESCUEDATE,'+3 DAYS') FROM PETRESCUE;

--displays the after 2 months date of each rescue
SELECT DATE(RESCUEDATE,'+2 MONTHS') FROM PETRESCUE;

