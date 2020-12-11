CREATE TABLE [dbo].[ExtraBills]
(
	[Id] INT NOT NULL PRIMARY KEY IDENTITY, 
    [BookingRowsId] INT NOT NULL, 
    [Paid] BIT NULL, 
    CONSTRAINT [FK_ExtraBills_ToBookingRows] FOREIGN KEY ([BookingRowsId]) REFERENCES [BookingRows]([Id])
)
