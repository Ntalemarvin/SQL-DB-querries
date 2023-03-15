/*
UNION 
*/
-- for union all placeholders btn both instances must be the same ie employeeID, Names etc same colums or select ....,select ...
SELECT * 
FROM [SQL TUTORIAL].dbo.EmployeeDemographics
UNION 
SELECT *
FROM [SQL TUTORIAL].dbo.WareHouseEmployeeDemographics


/*
UNION ALL
*/

SELECT * 
FROM [SQL TUTORIAL].dbo.EmployeeDemographics
UNION ALL 
SELECT *
FROM [SQL TUTORIAL].dbo.WareHouseEmployeeDemographics	