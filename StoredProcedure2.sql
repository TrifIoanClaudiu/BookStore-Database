use TheMagicOfWordsStore_Books;

Go

create or alter procedure Profit
AS
Begin
declare @total_salary_per_week money;
exec dbo.sum_salaries 
@sum =  @total_salary_per_week output;
declare @total_money_per_a_week money;
select @total_money_per_a_week=dbo.money_per_weak();
declare @total_writer_profit money;
select @total_writer_profit=dbo.writer_commission();
print ('The total Profit is: ')
print @total_money_per_a_week - (@total_salary_per_week + @total_writer_profit)
print ('dollars')

END;

GO

exec dbo.Profit;