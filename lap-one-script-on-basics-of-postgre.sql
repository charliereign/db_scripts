
--Find all titles with an undefined price in table titles
select title,price from pubs2.titles t where price is null;

--Find all titles with an undefined price in table titlesand supply a price of $20.00 for those with no defined price
select titles, '20'::money as price from pubs2.titles  where price is null;


select * from pubs2.pub_info;

--List the first 50 characters (of the pr_info column) of the pub_info table
--select * from pubs2.pub_info, substring(pr_info,1,50) as extractstring
--select * from pubs2.pub_info as extractstring, substring(pr_info,1,50)
--select * from pubs2.pub_info, substring(pr_info,1,50)
--select pub_id, substring(pr_info,1,50) from pubs2.pub_info

select current_date as "Todays Date", current_date + 7 as "next week date"

select to_char(current_timestamp, 'HH12:MI:SS')

select to_char(current_timestamp, 'Day, DD  HH12:MI:SS')

--Locate and use one the functions that would allow you to specify the format to be used when outputting a date.
--Format the ord_date in sales so it looks like this: Tuesday 13th September 1994

--select to_timestamp(current_date , 'DD Mon YYYY')
select to_char(ord_date, 'Day, DD MM YYYY') from pubs2.sales