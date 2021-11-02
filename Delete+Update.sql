use TheMagicOfWordsStore_Books;

delete from dbo.workers where (dbo.workers.worker_name = 'Cristina');
update dbo.writers
SET writer_commision = 0.20
where writer_id = 'b214';


insert into workers values ('WK17', 'Antonia', '$80.00', 'Mon-Fr', 'Cleaner');
insert into workers values ('WK21', 'Marcus', '$200.00', 'Mon-Sun', 'Programmer');
insert into workers values ('WK23', 'Ramona', '$220.00', 'Mon-Sun', 'Administrator');