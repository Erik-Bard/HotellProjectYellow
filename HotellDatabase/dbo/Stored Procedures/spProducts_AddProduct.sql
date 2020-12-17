
CREATE PROCEDURE dbo.spProducts_AddProduct
	@Name NVARCHAR(20),
	@Description NVARCHAR(50),
	@Price MONEY
AS
BEGIN
SET NOCOUNT ON
	
	IF (@Name  is null or @Name = '')
	BEGIN
		RAISERROR('Invalid input',18, 0)
		RETURN
	END

	IF (@Description is null or @Description = '')   
	BEGIN  
		RAISERROR('Invalid input',18, 0)
		RETURN
	END  

	IF (@Price is null or @Price < 0)   
	BEGIN  
		RAISERROR('Price must be higher than 0',18, 0)
		RETURN
	END  


	INSERT INTO Products(Name, Description, Price)
	VALUES (@Name, @Description, @Price)
RETURN
END