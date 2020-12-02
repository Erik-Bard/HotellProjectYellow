CREATE TABLE [dbo].[InvoiceRows]
(
	[Id] INT NOT NULL PRIMARY KEY IDENTITY, 
    [InvoiceId] INT NOT NULL, 
    [Description] NVARCHAR(50) NULL, 
    [Price] MONEY NULL, 
    [Discount] MONEY NULL, 
    CONSTRAINT [FK_InvoiceRows_ToInvoices] FOREIGN KEY ([InvoiceId]) REFERENCES [Invoices]([Id])
)
