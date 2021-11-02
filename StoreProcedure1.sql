use TheMagicOfWordsStore_Books;

GO
--Functia returneaza suma totala ce trebuie platita salariatilor.
Create or ALTER procedure sum_salaries  @sum money output
AS
    DECLARE @p_sum money;
    DECLARE @p_sal money;
	DECLARE @Counter INT = 1;
    DECLARE c CURSOR FOR SELECT worker_salary FROM workers;
	DECLARE @NoWorkers int;
	SELECT @NoWorkers=COUNT(1) from dbo.workers;
 
     SET @p_sum = 0;

     OPEN c;

     FETCH FROM c INTO @p_sal;

     WHILE(@Counter <= @NoWorkers) BEGIN

        SET @p_sum = @p_sum + @p_sal;
        FETCH FROM c INTO @p_sal; 
		SET @Counter = (@Counter+1);
    END
	 BEGIN

     CLOSE c;

     SET @sum = @p_sum;

	 return @sum;

	 END

	 GO
exec dbo.sum_salaries @sum = '0'; 