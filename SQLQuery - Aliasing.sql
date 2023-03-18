/*
ALIASING used when you have alot of joins 
denoted: AS
select alias & table alias
*/

SELECT *
FROM [SQL TUTORIAL].dbo. EmployeeDemographics

-- SELECT Alias
SELECT FirstName + ' ' + LastName AS FULLNAME
FROM [SQL TUTORIAL].dbo.EmployeeDemographics

-- TABLE Alias
SELECT DEMO.Gender
FROM [SQL TUTORIAL].dbo.EmployeeDemographics AS DEMO

--without alaising
SELECT EmployeeDemographics. FirstName,EmployeeDemographics.LastName,EmployeeSalary.JobTitle,WareHouseEmployeeDemographics.Age
FROM [SQL TUTORIAL].dbo.EmployeeDemographics
LEFT JOIN [SQL TUTORIAL].dbo.EmployeeSalary
	ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID
LEFT JOIN [SQL TUTORIAL].dbo.WareHouseEmployeeDemographics
	ON EmployeeDemographics.EmployeeID = WareHouseEmployeeDemographics.EmployeeID



--with alaising
SELECT Demo. FirstName,Demo.LastName,Sal.JobTitle,Ware.Age
FROM [SQL TUTORIAL].dbo.EmployeeDemographics Demo -- AS DEMO 
LEFT JOIN [SQL TUTORIAL].dbo.EmployeeSalary Sal
	ON Demo.EmployeeID = Sal.EmployeeID
LEFT JOIN [SQL TUTORIAL].dbo.WareHouseEmployeeDemographics Ware
	ON Demo.EmployeeID = Ware.EmployeeID