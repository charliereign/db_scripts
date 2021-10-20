select * from pubs2.titles t;

select * from pubs2.publishers p;

select * from pubs2.pub_info pi2;

select title_id, pubs2.titles.pub_id, pub_name 
from pubs2.titles 
inner join pubs2.publishers 
on pubs2.titles.pub_id = pubs2.publishers.pub_id --joining two tables and outputting


--Join the publishers and pub_info and show the publisher name and the first 40 characters of the pr_info information
select pubs2.pub_info.pub_id, pub_name, pr_info
from pubs2.publishers 
inner join pubs2.pub_info
on pubs2.publishers.pub_id = pubs2.pub_info.pub_id;