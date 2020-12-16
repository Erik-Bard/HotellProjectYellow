
CREATE PROCEDURE dbo.Employees_GetAll
	
AS
BEGIN
SET NOCOUNT ON

	SELECT FirstName, LastName, Title
	FROM Employees

END