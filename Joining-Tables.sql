select * from pubs2.titles t;

select * from pubs2.publishers p;

select * from pubs2.pub_info pi2;

select title_id, pubs2.titles.pub_id, pub_name 
from pubs2.titles 
inner join pubs2.publishers 
on pubs2.titles.pub_id = pubs2.publishers.pub_id --joining two tables and outputting


--Join the publishers and pub_info and show the publisher name and the first 40 characters of the pr_info information
select pubs2.pub_info.pub_id, pub_name, substring(pr_info, 0, 40)
from pubs2.publishers 
inner join pubs2.pub_info
on pubs2.publishers.pub_id = pubs2.pub_info.pub_id;


--Join the publishers and titles tables to show all titles published by each publisher. Display the pub_id, pub_nameand and title_id.
select title
from pubs2.titles
inner join pubs2.publishers
on pubs2.publishers.pub_id = pubs2.titles.pub_id;


--For each title_id in the table titles, rollup the corresponding qty in sales and show: title_id, title, ord_num
--and the rolled-up value as a column aggregate called Total Sold

select t.title_id, t.title, sum(s.qty), s.ord_num 
 from pubs2.titles t
 join pubs2.sales s 
 on (t.title_id = s.title_id)
 group by t.title_id, s.ord_num




