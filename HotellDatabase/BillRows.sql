CREATE TABLE [dbo].[BillRows]
(
	[Id] INT NOT NULL PRIMARY KEY IDENTITY, 
    [BillId] INT NOT NULL, 
    [ProductId] INT NOT NULL, 
    CONSTRAINT [FK_BillRows_ToBills] FOREIGN KEY ([BillId]) REFERENCES [Bills]([Id]), 
    CONSTRAINT [FK_BillRows_ToProducts] FOREIGN KEY ([ProductId]) REFERENCES [Products]([Id])
)
