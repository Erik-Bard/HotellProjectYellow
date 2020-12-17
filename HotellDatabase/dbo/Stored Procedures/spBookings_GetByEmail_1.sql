
CREATE PROCEDURE dbo.spBookings_GetByEmail
	@Email NVARCHAR(50)
AS
BEGIN
SET NOCOUNT ON
	
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

	SELECT C.Email, C.FirstName, C.LastName, 
	B.BookingDate, B.BookedFrom, B.BookedTo, B.Request, B.TotalAmount
	FROM Customers AS C
	INNER JOIN Bookings AS B ON C.Id = B.CustomerId

	WHERE Email = @Email
RETURN
END