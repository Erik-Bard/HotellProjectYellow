CREATE TABLE [dbo].[Customers]
(
	[Id] INT NOT NULL PRIMARY KEY IDENTITY, 
    [FirstName] NVARCHAR(50) NULL, 
    [LastName] NVARCHAR(50) NULL, 
    [Email] NVARCHAR(50) NULL, 
    [Phone] NVARCHAR(15) NULL, 
    [Street] NVARCHAR(50) NULL, 
    [Zip] NVARCHAR(10) NULL, 
    [City] NVARCHAR(50) NULL, 
    [Country] NVARCHAR(50) NULL
)
