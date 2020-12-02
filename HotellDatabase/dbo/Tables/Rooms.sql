CREATE TABLE [dbo].[Rooms]
(
	[Id] INT NOT NULL PRIMARY KEY IDENTITY, 
    [RoomNumber] INT NULL, 
    [RoomTypesId] INT NULL, 
    [Price] MONEY NULL, 
    [NoBeds] INT NULL, 
    CONSTRAINT [FK_Rooms_ToRoomTypes] FOREIGN KEY ([RoomTypesId]) REFERENCES [RoomTypes]([Id])
)
