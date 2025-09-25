 show databases;
 
 use sakila;  
 
 Show Tables;

 -- like operator ( pattern ke according data filter)

select * from actor where first_name ='N'; 

-- % (Wildcard character ) : zero or more character
select * from actor where first_name like 'N%';

select * from actor where first_name like '%N%';

select * from actor where first_name like '%N';

select * from actor where first_name like 's%t';

-- (_) : exactly 1 character
select * from actor where first_name like 'a_';

select * from actor where first_name like '_D%';

select * from actor where first_name like '%TE';

select * from actor where first_name like '%NN%';

select * from actor where first_name like 'N%';

select first_name, last_name from actor WHERE last_name like 'B%R_';

select * from actor where first_name LIKE '____%';

select * from actor where actor_id between 2 and 90 and first_name ='_%s%a_';

-- Functions--
-- inbuilt functions 
-- scaler function ( row function)    2) multi row functions
-- apply on each row and return the output for each row

-- total charactor in each first_name
select first_name , char_length(first_name) from actor;

select first_name , char_length(first_name) , lower(first_name) from actor;

select first_name , concat(first_name, ' ' ,last_name) from actor;

select first_name , concat(first_name, '-regex') from actor;

select first_name , concat_ws('@','MR',first_name, last_name) from actor;

select first_name , concat_ws(' ','MR',first_name, last_name) from actor;

-- substr ( to extract some data)
select first_name, substr(first_name,2) from actor;

select first_name, substr(first_name,3) , substr(first_name,3,2) from actor;
-- (1 column (2 staring position (3 total charactor  position start will be 1.

select first_name, substr(first_name,-4)  from actor;

select first_name, substr(first_name,-4,2)  from actor;


