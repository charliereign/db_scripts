--Which publishers have published at least one book?
select * from pubs2.titles;
select * from pubs2.publishers;
select * from pubs2.pub_info pi2;
select * from pubs2.authors a;

select p.pub_name from pubs2.publishers p where p.pub_id in (select t.pub_id from pubs2.titles t )

--Which authors have been published by more than one publisher?
--select * from pubs2.titleauthor;
--select distinct * from pubs2.authors;

--select title_id from pubs2.titleauthor where title_id 
--in (select pub_id from pubs2.titles where pub_id 
--in (select pub_id from pubs2.publishers));

--select au_id from pubs2.authors where au_id in ()

--select title_id from pubs2.titleauthor where title_id 
--in (select title_id from pubs2.titles );


select au_lname,au_fname from pubs2.authors 
where au_id in (select au_id from pubs2.titleauthor 
where title_id in (select title_id from pubs2.titles where pub_id in (select pub_id from pubs2.publishers))) having count(au_id) > 1



select au_id, count(au_id) from (
	select t.title
		,a.au_id 
		,a.au_fname
		,a.au_lname
		,p.pub_id 
		,p.pub_name
		,count(a.au_id)
	from pubs2.titles as t
		,pubs2.authors as a
		,pubs2.titleauthor as ta
		,pubs2.publishers as p
	where ta.title_id = t.title_id and ta.au_id = a.au_id and p.pub_id = t.pub_id
	group by t.title, a.au_id, a.au_fname, a.au_lname, p.pub_id, p.pub_name
	order by a.au_id
) as "auth_pub"
group by au_id
having count(au_id) > 1



--Which authors live in a city where a publisher exists?
select a.city, a.au_lname, a.au_fname from pubs2.authors a, pubs2.publishers p where p.city =a.city ;



