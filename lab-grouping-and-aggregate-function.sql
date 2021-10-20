select * from pubs2.titles t;

--Get average prices from the titles table for each type of book, and convert type to char(30).;
--select "type", avg(price::numeric) from pubs2.titles group by type;
select "type"::char(30) , avg(price::numeric) from pubs2.titles t group by type;

--Print the difference between (to a resolution of days) the earliest and latest publication date in titles
--select pubdate from pubs2.titles order by pubdate asc;
select max(pubdate::timestamp) - min(pubdate::timestamp) from pubs2.titles;

Print the average, min and max book prices within the titles table organised into groups based on type and publisher id.;
select "type", avg(price::numeric), min(price::numeric), max(price::numeric) 
from pubs2.titles 
group by type,pub_id;

select "type", pub_id, avg(coalesce (price::numeric,0)), min(coalesce(price::numeric,0)), max(coalesce(price::numeric,0)) 
from pubs2.titles 
group by type ,pub_id;

--Refine the previous question to show only those types whose average price is > $20 and output the results sorted on the average price.
select "type", pub_id, avg(coalesce (price::numeric,0)), min(coalesce(price::numeric,0)), max(coalesce(price::numeric,0)) 
from pubs2.titles
--where (price::numeric) > 20
group by type ,pub_id
having avg(price::numeric) > 20 ;

--List the books in order of the length of their title
select title_id , title from pubs2.titles t order by length(title);


--Business Queries
--What is the average age in months of each type of title?

select "type", avg(extract (month from pubdate)) from pubs2.titles t group by type

--How many authors live in each city?
--select * from pubs2.authors a;
select city, count (*) from pubs2.authors a group by city

--What is the longest title?
--select title from pubs2.titles t;
--select title_id, title from pubs2.titles order by title desc
--select title, max(length(title)) from pubs2.titles order by length(title) desc;
--select title_id, title
--from pubs2.titles t 
--order by length(title) desc 
--limit 2

select max(length(title)) from pubs2.titles  ;

--How many books have been sold by each store and how many books have been sold in total?
select * from pubs2.;
select stor_id , sum(qty) from pubs2.sales s 
group by stor_id 










