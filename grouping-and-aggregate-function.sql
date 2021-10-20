select * from pubs2.titles t;
select count(*) from pubs2.titles; --counts all non-null rows in the table;
select sum(advance) from pubs2.titles t; --sum all non-null values in the row of a table;
select avg(advance::numeric) from pubs2.titles t; --average of non-null values in the row of a table;
select max(price) from pubs2.titles t; --highest non-null value in the row of a table;
select min(price) from pubs2.titles t;


select avg(price::numeric) as averagePrice, avg(advance::numeric) as averageAdvance, max(price) as maxPrixe ,max(advance) as maxAdvance from pubs2.titles t;

select type, max(price) from pubs2.titles t group by type;

select * from pubs2.sales s;
select stor_id,ord_num, sum(qty) as "Total Quantity" from pubs2.sales s group by stor_id, ord_num having sum(qty) > 50 order by  "Total Quantity" ;

select type, max(ytd_sales) as "Total Sales" from pubs2.titles t group by "type" having max(ytd_sales) between 4000 and 5000 order by "Total Sales" 