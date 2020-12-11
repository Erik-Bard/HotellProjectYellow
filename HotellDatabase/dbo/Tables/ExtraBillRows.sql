CREATE TABLE [dbo].[ExtraBillRows]
(
	[Id] INT NOT NULL PRIMARY KEY IDENTITY, 
    [ExtraBillsId] INT NOT NULL, 
    [ProductId] INT NOT NULL, 
    CONSTRAINT [FK_ExtraBillRows_ToExtraBills] FOREIGN KEY ([ExtraBillsId]) REFERENCES [ExtraBills]([Id]), 
    CONSTRAINT [FK_ExtraBillRows_ToProducts] FOREIGN KEY ([ProductId]) REFERENCES [Products]([Id])
)
