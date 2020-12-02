CREATE TABLE [dbo].[Invoices]
(
	[Id] INT NOT NULL PRIMARY KEY IDENTITY, 
    [BookingId] INT NOT NULL, 
    [PaymentMethodId] INT NOT NULL, 
    [PaymentDate] DATETIME2 NOT NULL DEFAULT getutcdate(), 
    [TotalAmount] MONEY NULL, 
    [Paid] BIT NULL, 
    CONSTRAINT [FK_Invoices_ToBookings] FOREIGN KEY ([BookingId]) REFERENCES [Bookings]([Id]), 
    CONSTRAINT [FK_Invoices_ToPaymentMethods] FOREIGN KEY ([PaymentMethodId]) REFERENCES [PaymentMethods]([Id])
)
