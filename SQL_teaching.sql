/* select *  */
select * from family_members

/* SELECT specific columns */
select name,species from family_members

/* WHERE ... Equals */
select * from family_members where
species = 'dog'

/* WHERE ... Greater than */
select * from family_members where
num_books_read > 190

/* WHERE ... Greater than or equal */
select * from family_members where
num_books_read >= 180

/* AND */
select * from friends_of_pickles where species = 'dog' and height_cm < 45

/* OR */
select * from friends_of_pickles where species = 'dog' or height_cm < 45

/* IN */
select * from friends_of_pickles where species not in ('cat','dog')

/* distinct */
select distinct(species) from friends_of_pickles where height_cm >  50

/* ORDER by */
select * from friends_of_pickles order by height_cm desc

/* LIMIT # of returned rows */
select * from friends_of_pickles order by height_cm desc limit 1

/* COUNT(*) */
select count(*) from friends_of_pickles



/* The count(*) returns all rows whether column contains null value or not while count(columnName) returns the number of rows except null rows */


/* COUNT(*) ... WHERE */
select count(*) from friends_of_pickles
where species = 'dog'

/* SUM */
select sum(num_books_read) from family_members

/* AVG */
select avg(num_books_read) from family_members

/* MAX */
select MAX(num_books_read) from family_members

/* GROUP BY */
select  max(height_cm), species from friends_of_pickles group by species

/* Nested queries */
select * from family_members where num_books_read = ( select max(num_books_read) from family_members)

/* Null */
select * from family_members where favorite_book is not null

/* Date */
select * from celebs_born where birthdate > '1980-10-01'

/* Inner join */
select name, actor_name from character inner join  character_actor on character.id = character_actor.character_id

/* Multiple join */
select character.name, actor.name from character join character_actor on character.id = character_actor.character_id join actor on character_actor.actor_id = actor.id

/* joins with where */
select character.name , tv_show.name   from character_tv_show join character join tv_show on character.id = character_tv_show.character_id and tv_show.id = character_tv_show.tv_show_id where character.name  != 'Willow Rosenberg' and  tv_show.name != 'How I Met Your Mother'

/* Left join */
select character.name,actor.name from  character left join character_actor on character.id = character_actor.character_id  left join actor on actor.id = character_actor.actor_id


/* Table alias */
select  c.name, a.name from 
 character as c  left join character_actor as  ca 
 on ca.character_id = c.id 
 left join actor as a 
on ca.actor_id =  a.id

/* column alias */
select  c.name as character, a.name as actor from 
 character as c  left join character_actor as  ca 
 on ca.character_id = c.id 
 left join actor as a 
on ca.actor_id =  a.id


/* Self joins */
select e.name as employee_name , d.name as boss_name  from employees e join employees d on e.boss_id = d.id


/* Like */
select * from robots where name like '%20%'

/* CASE */
select * , case when species= "human" then "talk" when species= "dog" then "bark" when species= "cat" then "meow" end as sound
from friends_of_pickles

/* SUBSTR */
select *  from robots where SUBSTR(location,-2) like 'NY'

/*COALESCE takes a list of columns, and returns the value of the first column that is not null.*/

/* COALESCE */
SELECT name, COALESCE(tank, gun, sword) AS weapon FROM fighters;



















