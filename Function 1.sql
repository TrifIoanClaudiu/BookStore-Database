use TheMagicOfWordsStore_Books;

GO

create or alter function dbo.money_per_weak()
returns money
as
BEGIN
declare @total_week money;
select @total_week = sum(o.order_quantity * b.book_price)
from orders o , books b
where b.book_id = o.book_id
return @total_week;
END


