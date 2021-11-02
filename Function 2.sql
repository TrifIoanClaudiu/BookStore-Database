use TheMagicOfWordsStore_Books;

GO

create or alter function writer_commission()
returns money
as
begin
declare @w_com money;
select @w_com = sum( w.writer_commision * book_price * o.order_quantity)
from writers w, books b, orders o
where w.writer_id = b.writer_id and b.book_id = o.book_id

return @w_com;
end