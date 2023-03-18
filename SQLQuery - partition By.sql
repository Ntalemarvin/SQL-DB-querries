  SELECT Demo.FirstName,Demo.LastName,Demo.Gender,Sal.Salary
  FROM [SQL TUTORIAL].dbo.EmployeeDemographics Demo
  JOIN [SQL TUTORIAL].dbo.EmployeeSalary Sal
	ON Demo.EmployeeID = Sal.EmployeeID

-- partition by
  SELECT FirstName,LastName,Gender,Salary,
  COUNT(Gender) OVER (PARTITION BY Gender) as TotalGender
  FROM [SQL TUTORIAL].dbo.EmployeeDemographics Demo
  JOIN [SQL TUTORIAL].dbo.EmployeeSalary Sal
	ON Demo.EmployeeID = Sal.EmployeeID