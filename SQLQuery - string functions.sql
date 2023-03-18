/*

Today's Topic: String Functions - TRIM, LTRIM, RTRIM, Replace, Substring, Upper, Lower

*/

--Drop Table EmployeeErrors;


CREATE TABLE EmployeeErrors (
EmployeeID varchar(50)
,FirstName varchar(50)
,LastName varchar(50)
)

Insert into EmployeeErrors Values 
('1001  ', 'Jimbo', 'Halbert')
,('  1002', 'Pamela', 'Beasely')
,('1005', 'TOby', 'Flenderson - Fired')


Select *
From EmployeeErrors

-- Using Trim, LTRIM, RTRIM used to remove blank spaces
SELECT EmployeeID, TRIM(EmployeeID) as IDTRIM
FROM EmployeeErrors

SELECT EmployeeID, LTRIM(EmployeeID) as IDTRIM
FROM EmployeeErrors

SELECT EmployeeID, RTRIM(EmployeeID) as IDTRIM
FROM EmployeeErrors



-- Using Replace
SELECT LastName, REPLACE(LastName, '- Fired','') as LastNameFixed
FROM EmployeeErrors

-- Using Substring used like fazy match
SELECT err.FirstName,SUBSTRING(err.FirstName,1,3)dem.FirstName, SUBSTRING(dem.FirstName,1,3)
FROM [SQL TUTORIAL]..EmployeeErrors err
JOIN [SQL TUTORIAL] .. EmployeeDemographics dem
	ON SUBSTRING(err.FirstName,1,3) = SUBSTRING(dem.FirstName,1,3) -- 1 position, 3 letters

-- Gender
--LastName
-- DOB you can use it 
-- matching people details across different tables when ID isnt given


-- Using UPPER and lower
 SELECT FirstName, LOWER(FirstName)
 FROM EmployeeErrors

  SELECT FirstName, UPPER(FirstName)
 FROM EmployeeErrors