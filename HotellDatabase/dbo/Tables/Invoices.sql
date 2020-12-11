CREATE TABLE [dbo].[Invoices]
(
	[Id] INT NOT NULL PRIMARY KEY IDENTITY, 
    [PaymentMethodId] INT NOT NULL, 
    [PaymentDate] DATETIME2 NOT NULL DEFAULT getutcdate(), 
    [TotalAmount] MONEY NULL, 
    [Paid] BIT NULL, 
    CONSTRAINT [FK_Invoices_ToPaymentMethods] FOREIGN KEY ([PaymentMethodId]) REFERENCES [PaymentMethods]([Id])
)
