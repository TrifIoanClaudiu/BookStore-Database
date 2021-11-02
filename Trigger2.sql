Create Table InsertedLogBooks(
ID varchar(20) not null,
Title varchar(30) not null,
DateTimeOp DateTime not null
)
GO
CREATE OR ALTER TRIGGER TrOnInsertBooks
ON books
FOR INSERT
AS
INSERT InsertedLogBooks(ID,Title,DateTimeOp)
SELECT i.book_id,i.book_name, GETDATE()
FROM inserted i;

INSERT
INTO books
VALUES ('B89','Pet Semetary', 'Fantasy', 'a371', '$18', 60);

GO

SELECT * FROM InsertedLogBooks;