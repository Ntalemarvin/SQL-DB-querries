/*
Having clause
*/

--SELECT JobTitle ,COUNT(JobTitle)
--FROM [SQL TUTORIAL].dbo.EmployeeDemographics
--JOIN [SQL TUTORIAL].dbo.EmployeeSalary
--	ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID
--	WHERE COUNT(JobTitle) > 1
--GROUP BY JobTitle
-- ERROR MESG FOR ABOVE - An aggregate may not appear in the WHERE clause unless it is in a subquery contained in a HAVING clause or a select list, and the column being aggregated is an outer reference.



SELECT JobTitle ,COUNT(JobTitle)
FROM [SQL TUTORIAL].dbo.EmployeeDemographics
JOIN [SQL TUTORIAL].dbo.EmployeeSalary
	ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID
GROUP BY JobTitle
HAVING COUNT(JobTitle) > 1

-- job titles greater than 45000
SELECT JobTitle ,AVG(Salary)
FROM [SQL TUTORIAL].dbo.EmployeeDemographics
JOIN [SQL TUTORIAL].dbo.EmployeeSalary
	ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID
GROUP BY JobTitle
HAVING AVG(Salary) > 45000
ORDER BY AVG(Salary) DESC
