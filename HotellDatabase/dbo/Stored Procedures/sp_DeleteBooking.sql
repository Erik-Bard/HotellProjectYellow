CREATE PROCEDURE dbo.sp_DeleteBooking
	@Email nvarchar(50)

AS
BEGIN TRANSACTION [Tran1]
BEGIN TRY

	IF (@Email  is null or @Email = '')
	BEGIN
		RAISERROR('Invalid input',18, 0)
		RETURN
	END

	IF CHARINDEX('@',@Email) = 0   
	BEGIN  
		RAISERROR('Input must contain @',18, 0)
		RETURN
	END  

	DELETE Customers WHERE Email = @Email
	COMMIT TRANSACTION [Tran1]
END TRY

BEGIN CATCH
	PRINT 'Transaction Failed'
      ROLLBACK TRANSACTION [Tran1]

END CATCH  
