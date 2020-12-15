CREATE TABLE [dbo].[InvoiceRows]
(
	[InvoiceNumber] INT NOT NULL PRIMARY KEY IDENTITY, 
    [InvoiceId] INT NOT NULL, 
    [Description] NVARCHAR(50) NULL, 
    [Price] MONEY NULL, 
    [Discount] MONEY NULL, 
    [BookingId] INT NULL, 
    [ExtraBillsId] INT NULL, 
    CONSTRAINT [FK_InvoiceRows_ToInvoices] FOREIGN KEY ([InvoiceId]) REFERENCES [Invoices]([Id]), 
    CONSTRAINT [FK_InvoiceRows_ToBookings] FOREIGN KEY ([BookingId]) REFERENCES [Bookings]([Id]), 
    CONSTRAINT [FK_InvoiceRows_ToExtraBills] FOREIGN KEY ([ExtraBillsId]) REFERENCES [ExtraBills]([Id])
)