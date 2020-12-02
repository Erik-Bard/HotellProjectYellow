CREATE TABLE [dbo].[Messages]
(
	[Id] INT NOT NULL PRIMARY KEY IDENTITY, 
    [sent] DATETIME2 NULL DEFAULT getutcdate(), 
    [message] NTEXT NULL, 
    [BookingId] INT NOT NULL, 
    CONSTRAINT [FK_Messages_ToBookings] FOREIGN KEY ([BookingId]) REFERENCES [Bookings]([Id])
)
