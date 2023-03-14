/*
inner join
*/

--SELECT *
--FROM [SQL TUTORIAL] .dbo.EmployeeDemographics

--SELECT *
--FROM [SQL TUTORIAL] .dbo.EmployeeSalary

--inner join (A  n B)
--SELECT * 
--FROM [SQL TUTORIAL] .dbo.EmployeeDemographics
--INNER JOIN [SQL TUTORIAL].dbo.EmployeeSalary
--	ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID

--Full Outer Join (A u B)
--SELECT * 
--FROM [SQL TUTORIAL] .dbo.EmployeeDemographics
--FULL OUTER JOIN [SQL TUTORIAL].dbo.EmployeeSalary
--	ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID

-- RIGHT OUTER JOIN / LEFT OUTER JOIN
--SELECT * 
--FROM [SQL TUTORIAL] .dbo.EmployeeDemographics
--RIGHT OUTER JOIN [SQL TUTORIAL].dbo.EmployeeSalary
--	ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID

-- selecting from demograhics visa v 
--SELECT EmployeeDemographics.EmployeeID, FirstName, LastName, JobTitle, Salary
--FROM [SQL TUTORIAL] .dbo.EmployeeDemographics
--INNER JOIN [SQL TUTORIAL].dbo.EmployeeSalary
--	ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID

/*
USECASE  
get the highest earner apart from marvin
*/

SELECT EmployeeDemographics.EmployeeID, FirstName, LastName, JobTitle, Salary
FROM [SQL TUTORIAL].dbo.EmployeeDemographics
INNER JOIN [SQL TUTORIAL].dbo.EmployeeSalary
ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID
WHERE LastName <> 'Marvin'
ORDER BY Salary DESC
-- seems like stephan is the highest earner desides marvin

/*
USECASE  
Average salary of salesman
*/

SELECT JobTitle, AVG(Salary)
FROM [SQL TUTORIAL].dbo.EmployeeDemographics
INNER JOIN [SQL TUTORIAL].dbo.EmployeeSalary
	ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID
WHERE JobTitle = 'Salesman'
GROUP BY 'JobTitle'
