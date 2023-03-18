/*
CTEs common table expression
like a sub query
*/

WITH CTE_Employee as
(SELECT FirstName,LastName,Gender,Salary,
  COUNT(Gender) OVER (PARTITION BY Gender) as TotalGender,
  AVG(Salary) OVER (PARTITION BY Gender) as AvgSalary
FROM [SQL TUTORIAL].dbo.EmployeeDemographics Demo
JOIN [SQL TUTORIAL].dbo.EmployeeSalary Sal
	ON Demo.EmployeeID = Sal.EmployeeID
WHERE Salary > '45000'
)

SELECT FirstName, AvgSalary
FROM CTE_Employee