
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

	SELECT Email, FirstName, LastName, BookingDate, BookedFrom, BookedTo, Request, TotalAmount
	FROM Customers
	INNER JOIN Bookings ON Customers.Id = Bookings.CustomerId

	WHERE Email = @Email
RETURN
END