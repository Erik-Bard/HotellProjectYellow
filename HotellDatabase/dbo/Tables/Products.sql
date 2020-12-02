CREATE TABLE [dbo].[Products]
(
	[Id] INT NOT NULL PRIMARY KEY IDENTITY, 
    [Name] NVARCHAR(20) NULL, 
    [Description] NVARCHAR(50) NULL, 
    [Price] MONEY NULL
)
