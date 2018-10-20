-- Доп задание

CREATE TABLE table1 (
    id INT,
    var1 NVARCHAR(20),
    valid_from_dttm DATE,
    valid_to_dttm DATE
)

CREATE TABLE table2 (
    id INT,
    var2 NVARCHAR(20),
    valid_from_dttm DATE,
    valid_to_dttm DATE
)

INSERT INTO table1 VALUES (1, 'A', '2018-09-01', '2018-09-15'),
						  (1, 'B', '2018-09-16', '5999-12-31')

INSERT INTO table2 VALUES (1, 'A', '2018-09-01', '2018-09-18'),
						  (1, 'B', '2018-09-19', '5999-12-31')

SELECT id, var1, valid_from_dttm 
INTO #tmptable1
FROM table1
UNION
SELECT id, var2, valid_from_dttm
FROM table2
ORDER BY id, valid_from_dttm

SELECT id, var2, valid_to_dttm
INTO #tmptable2
FROM table2
UNION
SELECT id, var1, valid_to_dttm
FROM table1
ORDER BY id, valid_to_dttm

SELECT ROW_NUMBER() OVER(ORDER BY id, valid_from_dttm) AS rn, id, var1, valid_from_dttm
INTO #table1 FROM #tmptable1
SELECT ROW_NUMBER() OVER(ORDER BY id, valid_to_dttm) AS rn, id, var2, valid_to_dttm
INTO #table2 FROM #tmptable2

SELECT T1.id, T1.var1, T2.var2, T1.valid_from_dttm, T2.valid_to_dttm
FROM #table1 T1 JOIN #table2 T2 ON T1.rn = T2.rn

select * from table1
select * from table2

select * from #tmptable1
select * from #tmptable2

select * from #table1
select * from #table2

drop table table1, table2
drop table #tmptable1, #tmptable2
drop table #table1, #table2
