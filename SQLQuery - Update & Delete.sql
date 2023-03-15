/*
UPDATE
*/

SELECT *
FROM [SQL TUTORIAL].dbo.EmployeeDemographics

--UPDATE [SQL TUTORIAL].dbo.EmployeeDemographics
--SET EmployeeID = 1003
--WHERE FirstName = 'Ntale' AND LastName = 'Marvin '

DELETE FROM  [SQL TUTORIAL].dbo.EmployeeDemographics
WHERE EmployeeID = 1003
