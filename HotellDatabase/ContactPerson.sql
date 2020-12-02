CREATE TABLE [dbo].[ContactPerson]
(
	[Id] INT NOT NULL PRIMARY KEY IDENTITY, 
    [FullName] NVARCHAR(50) NULL, 
    [Title] NVARCHAR(50) NULL, 
    [EmployeesId] INT NOT NULL, 
    CONSTRAINT [FK_ContactPerson_ToEmployees] FOREIGN KEY ([EmployeesId]) REFERENCES [Employees]([Id])
)
