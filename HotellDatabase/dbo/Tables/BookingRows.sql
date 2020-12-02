CREATE TABLE [dbo].[BookingRows]
(
	[Id] INT NOT NULL PRIMARY KEY IDENTITY, 
    [BookingId] INT NOT NULL, 
    [RoomId] INT NOT NULL, 
    [NoGuests] BIT NOT NULL, 
    [NoExtraBeds] BIT NOT NULL, 
    [CheckIn] DATETIME2 NOT NULL DEFAULT getutcdate(),
    [CheckOut] DATETIME2 NOT NULL DEFAULT getutcdate(), 
    [Price] MONEY NOT NULL, 
    [Discount] MONEY NOT NULL, 
    CONSTRAINT [FK_BookingRows_ToBookings] FOREIGN KEY ([BookingId]) REFERENCES [Bookings]([Id]), 
    CONSTRAINT [FK_BookingRows_ToRooms] FOREIGN KEY ([RoomId]) REFERENCES [Rooms]([Id])
)
