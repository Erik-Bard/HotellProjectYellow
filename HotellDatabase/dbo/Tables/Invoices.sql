CREATE TABLE [dbo].[Invoices]
(
	[InvoiceNumber] INT NOT NULL PRIMARY KEY IDENTITY, 
    [PaymentMethodId] INT NOT NULL, 
    [PaymentDate] DATETIME2 NOT NULL DEFAULT getutcdate(), 
    [TotalAmount] MONEY NULL, 
    [Paid] BIT NULL, 
    [ExtraBillsId] INT NOT NULL, 
    CONSTRAINT [FK_Invoices_ToPaymentMethods] FOREIGN KEY ([PaymentMethodId]) REFERENCES [PaymentMethods]([Id]), 
    CONSTRAINT [FK_Invoices_ToExtraBills] FOREIGN KEY ([ExtraBillsId]) REFERENCES [ExtraBills]([Id])
)
