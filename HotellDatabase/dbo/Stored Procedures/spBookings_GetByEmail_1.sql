
CREATE PROCEDURE dbo.spBookings_GetByEmail
	@Email NVARCHAR(50)
AS
BEGIN
SET NOCOUNT ON

	SELECT Email, FirstName, LastName, BookingDate, BookedFrom, BookedTo
	FROM Customers
	INNER JOIN Bookings ON Customers.Id = Bookings.CustomerId

	WHERE Email = @Email
END