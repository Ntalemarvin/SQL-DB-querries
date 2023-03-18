/*
stored procedures can be group of querries stored and kept in that DB
*/

--CREATE PROCEDURE TEST
--AS
--SELECT *
--FROM EmployeeDemographics

--EXEC TEST

CREATE PROCEDURE Temp_Employee 
AS
CREATE TABLE #Temp_Employee
(
JobTitle varchar(50),
EmployeePerJob int,
AvgAge int,
AvgSalary int
)

INSERT INTO #Temp_Employee
SELECT JobTitle, COUNT(JobTitle), AVG(Age), AVG(Salary)
FROM [SQL TUTORIAL]..EmployeeDemographics emp
JOIN [SQL TUTORIAL] .. EmployeeSalary sal
	ON emp.EmployeeID = sal.EmployeeID
GROUP BY JobTitle

SELECT *
FROM #Temp_Employee


EXEC #Temp_Employee