/*
Temp Tables
Remember it not an actual database so if you want to run it time to time use
DROP TABLE IF EXISTS #Temp_table name 
*/

CREATE TABLE #Temp_Employee
(
EmployeeID int,
JobTitle varchar(100),
Salary int
)

SELECT *
FROM #Temp_Employee

INSERT INTO #Temp_Employee VALUES (
'1001','HR','38000'
)
/*
insert specific data from a table and insert into into a temp table
*/

INSERT INTO #Temp_Employee
SELECT * 
FROM [SQL TUTORIAL]..EmployeeSalary



/*
second scenario
*/
DROP TABLE IF EXISTS #Temp_Employee2
CREATE TABLE #Temp_Employee2
(
JobTitle varchar(50),
EmployeePerJob int,
AvgAge int,
AvgSalary int
)

INSERT INTO #Temp_Employee2
SELECT JobTitle, COUNT(JobTitle), AVG(Age), AVG(Salary)
FROM [SQL TUTORIAL]..EmployeeDemographics emp
JOIN [SQL TUTORIAL] .. EmployeeSalary sal
	ON emp.EmployeeID = sal.EmployeeID
GROUP BY JobTitle

SELECT *
FROM #Temp_Employee2