CREATE PROCEDURE dbo.sp_BookRoom

	/* Customer */
	@FirstName nvarchar(50),
	@LastName nvarchar(50),
	@Email nvarchar(50),
	@Phone nvarchar(15),
	@Street nvarchar(50),
	@Zip nvarchar(10),
	@City nvarchar(50),
	@Country nvarchar(50),

	/* Bookings */
	@BookingDate nvarchar(50),
	@BookedFrom nvarchar(50),
	@BookedTo nvarchar(50),
	@Request nvarchar(200),
	@TotalAmount money,
	@NoShow bit,

	/* BookingRows */
	@RoomId int,
	@NoGuests bit,
	@NoExtraBeds bit,
	@Price money,
	@Discount money


AS
BEGIN TRANSACTION [Tran1]
BEGIN TRY

	INSERT INTO Customers(FirstName, LastName, Email, Phone, Street, Zip, City, Country)
	VALUES (@FirstName, @LastName, @Email, @Phone, @Street, @Zip, @City, @Country)

	INSERT INTO Bookings(BookingDate, BookedFrom, BookedTo, CustomerId, Request, TotalAmount, NoShow)
	VALUES (@BookingDate, @BookedFrom, @BookedTo, SCOPE_IDENTITY() ,@Request, @TotalAmount, @NoShow)

	INSERT INTO BookingRows(BookingId, RoomId, NoGuests, NoExtraBeds, CheckIn, CheckOut, Price, Discount )
	VALUES (SCOPE_IDENTITY(), @RoomId, @NoGuests, @NoExtraBeds, @BookedFrom, @BookedTo, @Price, @Discount )


	COMMIT TRANSACTION [Tran1]
END TRY

BEGIN CATCH
		PRINT 'Transaction failed, rolling back'
      ROLLBACK TRANSACTION [Tran1]

END CATCH  
