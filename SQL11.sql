show databases;   -- will show all database in mysql

use sakila;  -- use sakila as a database

-- show table to see all table

Show Tables;


-- select statement (DQL)  * access all column

select * from actor;  

describe actor;    -- will give table info ( column , datatype, relationship and more)

select actor_id, first_name from actor;  -- select statement table it can be in any case format

select actor_id, first_name,   -- run ( ctrl+ enter)
actor_id, last_name
from actor;

-- don't create new column in original data
select actor_id, first_name, actor_id*5 from actor;

-- to filter rows
select * from actor where actor_id=3;

select * from actor where first_name='Nick'; -- DATA SHOULD BE CASE SENSITIVE

select * from actor where LAST_NAME='DAVIS';

select ACTOR_id, last_name, first_name from actor where LAST_NAME='DAVIS';

-- not equal to
select * from actor where actor_id!=5;
select * from actor where actor_id<>5;

select * from actor where first_name='NICK' and actor_id=44;

select * from actor where first_name='NICK' or actor_id!=46;

select * from actor where actor_id between 2 and 6;  -- lower to higher (not higher to lower)

select * from actor where actor_id>=2  and actor_id<=6;

select * from actor where actor_id>2  and actor_id>6;

select * from actor where actor_id not between 2 and 6; 

-- BOTH ARE SAME

select * from actor where actor_id=2 or actor_id=8 or actor_id=19;
select * from actor where actor_id in (2,8,19);

select * from actor where first_name in ('NICK', 'ED');

select * from actor;

select * from actor where actor_id='PENELOPE' or actor_id=3 or actor_id=18;

select ACTOR_id, first_name from actor where actor_id between 3 and 18 or first_name!='ED';

select ACTOR_id, first_name from actor where (actor_id>=3 and ACTOR_ID<=18) or first_name!='ED';

SELECT actor_id, first_name
FROM actor
WHERE last_name = 'GENIUS';

SELECT actor_id, first_name, last_name
FROM actor
WHERE first_name IN ('NICK', 'GRACE');

SELECT actor_id, first_name, last_name
FROM actor
WHERE first_name = 'nICK'
   OR first_name = 'GRACE';
   
SELECT *
FROM actor
WHERE actor_id BETWEEN 2 AND 6
   OR actor_id > 5;
   
select last_name, actor_id, first_name from actor where first_name='nick' or first_name='grace';

