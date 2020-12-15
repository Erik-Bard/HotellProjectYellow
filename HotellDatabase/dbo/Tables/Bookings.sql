CREATE TABLE [dbo].[Bookings]
(
	[Id] INT NOT NULL PRIMARY KEY IDENTITY, 
    [BookingDate] DATETIME2 NOT NULL DEFAULT getutcdate(), 
    [BookedFrom] DATETIME2 NOT NULL DEFAULT getutcdate(), 
    [BookedTo] DATETIME2 NOT NULL DEFAULT getutcdate(), 
    [CustomerId] INT NOT NULL, 
    [Request] NVARCHAR(200) NULL, 
    [TotalAmount] MONEY NOT NULL, 
    [NoShow] BIT NOT NULL, 
    CONSTRAINT [FK_Bookings_ToCustomers] FOREIGN KEY ([CustomerId]) REFERENCES [Customers]([Id])
)
