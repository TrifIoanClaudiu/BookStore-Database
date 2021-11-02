use TheMagicOfWordsStore_Books

GO

create or alter procedure addBook(@ID varchar(20), @title varchar(50),@genre varchar(20), @authorID varchar(20),
@price money, @quantity varchar(20))
AS
BEGIN
INSERT INTO dbo.books(book_id, book_name, book_type, writer_id, book_price, book_stock)
values(@ID,@title,@genre,@AuthorID,@price,@quantity);
Print 'Cartea ' + @title + ' a fost adaugata';
END

go

exec dbo.addBook @ID ='B40' ,@title ='A feast for crows' ,@genre = 'Fantasy' 
,@AuthorID = 'b214' ,@price = 50,@quantity = 100;

