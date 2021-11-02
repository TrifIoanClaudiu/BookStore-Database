Create Table DeleteLogWorkers(
ID varchar(20) not null,
DateTimeOp DateTime not null
)
GO
CREATE OR ALTER TRIGGER TrOnDeleteWorkers
ON workers
FOR DELETE
AS
INSERT DeleteLogWorkers(ID,DateTimeOp)
SELECT d.worker_id, GETDATE()
FROM deleted d

DELETE
FROM workers
WHERE worker_id ='WK23'

GO

SELECT * FROM DeleteLogWorkers
