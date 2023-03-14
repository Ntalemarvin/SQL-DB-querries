/*
Group By, Order By 
*/


--SELECT Gender
--FROM EmployeeDemographics
--GROUP BY Gender

--SELECT Gender, COUNT(Gender)
--FROM EmployeeDemographics
--GROUP BY Gender

--SELECT Gender, COUNT(Gender)
--FROM EmployeeDemographics
--WHERE Age > 30
--GROUP BY Gender

-- Order By
--SELECT Gender, COUNT(Gender) AS CountGender
--FROM EmployeeDemographics
--WHERE Age > 30
--GROUP BY Gender


--SELECT Gender, COUNT(Gender) AS CountGender
--FROM EmployeeDemographics
--WHERE Age > 30
--GROUP BY Gender
--ORDER BY CountGender /*by default sql orders in ascending order*/

--DESC ORDER BY
--SELECT Gender, COUNT(Gender) AS CountGender
--FROM EmployeeDemographics
--WHERE Age > 30
--GROUP BY Gender
--ORDER BY CountGender DESC

-- use numbers in order to represent colums 
--SELECT *
--FROM EmployeeDemographics
--ORDER BY 1,2,3,4,5

--SELECT *
--FROM EmployeeDemographics
--ORDER BY 4 DESC, 5 DESC

-- ORDER LETTERS IN A COLUM
SELECT FirstName, LastName
FROM EmployeeDemographics
ORDER BY  FirstName DESC, LastName DESC