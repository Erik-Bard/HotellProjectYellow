
CREATE PROCEDURE dbo.Products_RemoveProduct
	@Name NVARCHAR(20)
AS
BEGIN
SET NOCOUNT ON

	IF (@Name  is null or @Name = '')
	BEGIN
		RAISERROR('Invalid input',18, 0)
		RETURN
	END

	DELETE FROM Products WHERE Products.Name = @Name
RETURN
END