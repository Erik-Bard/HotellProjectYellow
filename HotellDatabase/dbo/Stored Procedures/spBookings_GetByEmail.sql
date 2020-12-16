
CREATE PROCEDURE dbo.spBookings_GetByEmail
	@Email NVARCHAR(50)
AS
BEGIN
SET NOCOUNT ON

	SELECT C.Id, C.Email, C.FirstName, C.LastName, C.Phone, B.BookedFrom, B.BookedTo, B.InvoiceId, R.RoomNumber
	FROM Customers AS C
	inner join 
	Bookings AS B 
	ON C.Id = B.Id

	inner join
	Rooms AS R
	ON R.Id = B.Id

	WHERE Email = @Email
END
