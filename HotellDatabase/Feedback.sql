CREATE TABLE [dbo].[Feedback]
(
	[Id] INT NOT NULL PRIMARY KEY IDENTITY, 
    [BookingId] INT NOT NULL, 
    [Thoughts] NTEXT NULL, 
    CONSTRAINT [FK_Feedback_ToBookings] FOREIGN KEY ([BookingId]) REFERENCES [Bookings]([Id])
)
