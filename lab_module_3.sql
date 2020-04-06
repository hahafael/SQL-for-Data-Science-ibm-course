SELECT * FROM EMPLOYEES;
-- Query 1 : Retrieve all employees whose address is in Elgin,IL
SELECT  F_NAME, L_NAME  FROM EMPLOYEES
WHERE address LIKE '%Elgin,IL%';

-- Query 2: Retrieve all employees who were born during the 1970's.

SELECT F_NAME, L_NAME FROM EMPLOYEES
WHERE B_DATE LIKE '%197%';

-- Query 3:  Retrieve all employees in department 5 whose salary is between 60000 and 70000

SELECT F_NAME, L_NAME FROM EMPLOYEES
WHERE  SALARY BETWEEN 60000 AND 70000 
AND  DEP_ID = 5;

-- Query 4A: Retrieve a list of employees ordered by department ID. 

SELECT F_NAME, L_NAME FROM EMPLOYEES
ORDER BY DEP_ID; 

--Query 4B:  Retrieve a list of employees ordered in descending order by department ID and within each 
--department ordered alphabetically in
--descending order by last name.

SELECT F_NAME, L_NAME FROM EMPLOYEES
ORDER BY DEP_ID DESC, L_NAME DESC;


--Query 5A: For each department ID retrieve the number of employees in the department.
--Hint: Use COUNT(*) to retrieve the total count of a column, and then GROUP BY
SELECT DEP_ID, COUNT(*)
FROM EMPLOYEES
GROUP BY DEP_ID;

--Query 5B : For each department retrieve the number of employees in the
--department, and the average employees salary in the department.


SELECT COUNT(DEP_ID) ,AVG(SALARY) 
FROM EMPLOYEES
GROUP BY DEP_ID;

--Query 5C: Label the computed columns in the result set of Query 5B as
--“NUM_EMPLOYEES” and “AVG_SALARY”.

SELECT COUNT(DEP_ID) AS NUM_EMPLOYEES,AVG(SALARY) AS AVG_SALARY
FROM EMPLOYEES
GROUP BY DEP_ID;

--Query 5D: In Query 5C order the result set by Average Salary.
--[Hint: Use ORDER BY after the GROUP BY]

SELECT COUNT(DEP_ID) AS NUM_EMPLOYEES,AVG(SALARY) AS AVG_SALARY
FROM EMPLOYEES
GROUP BY DEP_ID
 ORDER BY AVG_SALARY;
 
 --Query 5E: In Query 5D limit the result to departments with fewer than 4
--employees.

SELECT COUNT(DEP_ID) AS NUM_EMPLOYEES,AVG(SALARY) AS AVG_SALARY
FROM EMPLOYEES
GROUP BY DEP_ID HAVING COUNT(DEP_ID) < 4
ORDER BY AVG_SALARY;

--Notes :

--Must use the count function in the having clouse instead of the column label (num_empoyees)
--Note: WHERE clause is used for filtering the entire result set whereas the HAVING
--clause is used for filtering the result of the grouping

