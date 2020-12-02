CREATE TABLE [dbo].[Bills]
(
	[Id] INT NOT NULL PRIMARY KEY IDENTITY, 
    [BookingRowsId] INT NOT NULL, 
    [Paid] BIT NULL, 
    CONSTRAINT [FK_Bills_ToBookingRows] FOREIGN KEY ([BookingRowsId]) REFERENCES [BookingRows]([Id])
)
