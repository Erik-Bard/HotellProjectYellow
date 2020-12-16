
CREATE PROCEDURE dbo.spInvoice_Paid
	@Email NVARCHAR(50)
AS
BEGIN
SET NOCOUNT ON

	SELECT  Email, FirstName, LastName, Paid
	FROM Customers
	INNER JOIN Bookings ON Bookings.CustomerId = Customers.Id

	INNER JOIN Invoices ON Invoices.Id = Bookings.Id

	WHERE Email = @Email
END