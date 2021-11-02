use TheMagicOfWordsStore_Books;

go

create or alter function addBookToWishList(@title varchar(50),@customerid varchar(20))
returns int
as
begin

	if(exists(select * from dbo.books where dbo.books.book_name = @title))
		return 0
	return 1;
end

go

declare @exists int;
declare @title varchar(50);
set @title = 'Ulysses';
declare @custID varchar(20);
set @custID = 'C3';
set @exists=dbo.addBookToWishList(@title, @custID);
if (@exists = 1) insert into dbo.wish_list values ('L7', @title, 'Drama', @custID);
if (@exists = 0) print ('The book is already in the shop');
set @title = 'East of Eden';
set @exists=dbo.addBookToWishList(@title, @custID);
if (@exists = 1) insert into dbo.wish_list values ('L7', @title, 'Drama', @custID);
if (@exists = 0) print ('The book is already in the shop');