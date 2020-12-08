CREATE TABLE [dbo].[Ratings]
(
	[Id] INT NOT NULL PRIMARY KEY IDENTITY, 
    [RoomId] INT NOT NULL, 
    [CustomerId] INT NOT NULL, 
    [Rating] INT NULL, 
    [Description] NTEXT NULL, 
    CONSTRAINT [FK_Ratings_ToRooms] FOREIGN KEY ([RoomId]) REFERENCES [Rooms]([Id]), 
    CONSTRAINT [FK_Ratings_ToCustomers] FOREIGN KEY ([CustomerId]) REFERENCES [Customers]([Id])
)
