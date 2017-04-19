CREATE TABLE [dbo].[Counter] (
	[CounterNo] [int] NOT NULL ,
	[DocDate] [datetime] NULL ,
	[DocNo] [char] (10) COLLATE Cyrillic_General_CI_AS NULL ,
	[RollNo] [char] (10) COLLATE Cyrillic_General_CI_AS NULL ,
	[RollDate] [datetime] NULL ,
	[RollDocNo] [char] (10) COLLATE Cyrillic_General_CI_AS NULL ,
	[Len] [int] NULL ,
	[Shift] [char] (50) COLLATE Cyrillic_General_CI_AS NULL ,
	[TaskDate] [datetime] NULL ,
	[TaskDocNo] [char] (10) COLLATE Cyrillic_General_CI_AS NULL 
) ON [PRIMARY]
GO

CREATE TRIGGER [CounterUpdate] ON dbo.Counter 
FOR UPDATE AS BEGIN UPDATE    Counter

SET TaskDocNo = 
(SELECT TOP 1  _1SJOURN.DOCNO
FROM         DT1582 INNER JOIN
                      _1SJOURN _1SJOURN_1 ON DT1582.IDDOC = _1SJOURN_1.IDDOC INNER JOIN
                      DT8796 INNER JOIN
                      Counter ON DT8796.SP8806 = Counter.RollNo INNER JOIN
                      _1SJOURN ON DT8796.IDDOC = _1SJOURN.IDDOC INNER JOIN
                      DH8796 ON DT8796.IDDOC = DH8796.IDDOC ON _1SJOURN_1.DOCNO = Counter.RollDocNo AND DT1582.SP8722 = Counter.RollNo, inserted i
WHERE    Counter.CounterNo =  i.CounterNo ),

TaskDate = 
(SELECT TOP 1 CONVERT(DateTime, LEFT(_1SJOURN.DATE_TIME_IDDOC, 8), 112) AS Expr1
FROM         DT1582 INNER JOIN
                      _1SJOURN _1SJOURN_1 ON DT1582.IDDOC = _1SJOURN_1.IDDOC INNER JOIN
                      DT8796 INNER JOIN
                      Counter ON DT8796.SP8806 = Counter.RollNo INNER JOIN
                      _1SJOURN ON DT8796.IDDOC = _1SJOURN.IDDOC INNER JOIN
                      DH8796 ON DT8796.IDDOC = DH8796.IDDOC ON _1SJOURN_1.DOCNO = Counter.RollDocNo AND DT1582.SP8722 = Counter.RollNo, inserted i
WHERE    Counter.CounterNo =  i.CounterNo ),

Shift =
(SELECT  TOP 1  SC8748.DESCR AS Expr1
FROM         DH8796 INNER JOIN
                      DT8796 ON DH8796.IDDOC = DT8796.IDDOC INNER JOIN
                      Counter ON DT8796.SP8806 = Counter.RollNo INNER JOIN
                      SC8748 ON DH8796.SP8799 = SC8748.ID, inserted i
WHERE    Counter.CounterNo =  i.CounterNo )
END
GO

