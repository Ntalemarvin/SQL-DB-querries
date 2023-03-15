/*
CASE STATMENT
*/

--SELECT FirstName,LastName,Age,
--CASE
--	WHEN Age > 30 THEN 'old'
--	WHEN Age BETWEEN 27 AND 30 THEN 'Young'
--	ELSE 'Baby'
--END
--FROM [SQL TUTORIAL].dbo.EmployeeDemographics
--WHERE Age is NOT NULL
--ORDER BY Age

-- Rise salary of Employees accordingly

SELECT FirstName, LastName, JobTitle, Salary,
CASE
	WHEN JobTitle = 'Salesman' THEN Salary + (Salary * .10) -- salary*10%
	WHEN JobTitle = 'DataScientist' THEN Salary + (Salary * .05)
	WHEN JobTitle = 'Engineer' THEN Salary +(Salary * .10)
	WHEN JobTitle = 'HR' THEN Salary + (Salary *  .000001)
	ELSE Salary + (Salary * 0.3)
END AS SalaryAfterRaise
FROM [SQL TUTORIAL].dbo.EmployeeDemographics
JOIN [SQL TUTORIAL].dbo.EmployeeSalary
	ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID
ORDER BY SalaryAfterRaise DESC
