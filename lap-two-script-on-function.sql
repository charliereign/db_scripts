
--Display the current date
--select to_char(current_timestamp, 'DD Mon YYYY');
select current_date;

--Display the current time
--SELECT to_char(current_timestamp, 'HH:MI:SS');
select current_time;


--Display the current timestamp
SELECT CURRENT_TIMESTAMP

--Convert the string '2018-09-26' to a date
select to_date('2018-09-26','YYYY/MM/DD');

--Convert the string '2018-09-26' to a timestamp
SELECT TO_TIMESTAMP('2018-09-26', 'YYYY/MM/DD/HH24:MI:ss') AS  new_timestamptz;

--How many days are there between '2018-09-26' and '2018-12-25'?
--select age('2018-09-26','2018-12-25');
SELECT '2018-09-26'::timestamp - '2018-12-25'::timestamp;

--How many days have elapsed since each book in TITLES was published?
select title_id, title, current_timestamp - pubdate from pubs2.titles;

--Display the year of publication of each book in TITLES.
select * from pubs2.titles, extract (year from pubs2.titles.pubdate) as year;
--select title_id, title, year from pubs2.titles, extract (year from pubs2.titles.pubdate) as year

--Display the day of publication of each book in TITLES.
select * from pubs2.titles, extract (day from pubs2.titles.pubdate) as day;

--What shortcuts does it take in calculating the difference?
select start _date - end_date

--When might it make sense to use TIMESTAMPDIFF()




