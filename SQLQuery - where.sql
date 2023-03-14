/*
Where Stament
=, <>, <, >, And, Or, Like, Null, Not Null, In
*/

-- except <> 
--SELECT * 
--FROM EmployeeDemographics
--WHERE FirstName <> 'Kateregga'

-- >, <, >=, <=,
--SELECT FirstName, LastName, Age
--FROM EmployeeDemographics
--WHERE Age >= 30 AND Gender = 'Female'

--LIKE (wildcard S% lastname starts with s) % simply tracks words
--SELECT *
--FROM EmployeeDemographics
--WHERE LastName LIKE 'S%'

--LIKE (wildcard %S% anywhere in the lastname is s)
--SELECT *
--FROM EmployeeDemographics
--WHERE LastName LIKE '%S%'

--LIKE (wildcard %S% anywhere in the lastname is m & tt)
--SELECT *
--FROM EmployeeDemographics
--WHERE LastName LIKE 'm%o%'

-- NULL , NOT NULL 
--SELECT *
--FROM EmployeeDemographics
--WHERE FirstName is NULL

-- IN
SELECT *
FROM EmployeeDemographics
WHERE FirstName IN ('Kateregga', 'Ntale')