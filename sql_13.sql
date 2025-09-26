use sakila;


select first_name, concat("A", first_name), char_length(first_name),
substr(first_name, 2,1) from actor;

-- trim function
select char_length( trim('    hey   ')) ;

select char_length( rtrim('    hey   ')) ;

select char_length( ltrim('    hey   ')) ;

-- replace--
select first_name, replace(first_name,'E' , '#') from actor;

select first_name, lpad(first_name, 5, '@') from actor;

select first_name, rpad(first_name, 5, '@') from actor;

-- numeric functions
-- round
select round(11.2);

select round(11.6, 1); -- only the decimal the part 

select round(11.68 , 1); -- round karenge agr value 5 se bdi h toh 8 bdi h 

select round(11.62 , 1);

select round(11.687 , 2);

select round(7.687 , 2);

select round(7.627 , 1);

select round(7.627 , -1);

select round(11.627 , -1);

select round(2.627 , -1);

-- 2<5 => 0

select round(36.627 , -1);
 
select round(76.627 , -2);

select round(276.627 , -2);

select round(546.627 , -3);

select round(76.627 , -3);

select round(6546.637 , 2) , truncate(6546.637, 2);

-- other functions
select mod(10,2), floor(6.9999999999), ceil(4.000002);

-- date functions [important]
-- date par kaam karne ke liye

select current_date(), current_time(), current_timestamp(), now();

-- add date
select now(), adddate( now() , 2);

select now(), adddate( now() , interval 2 month);

select now(), adddate( now() , interval 2 year);

select now(), adddate( now() , interval 2 hour);

select now(), adddate( now() , interval -2 hour);

select now(), adddate( now() , interval -2 day);

select now(), addtime( now() , '02:00:00');

-- year and month
select now(), year( now() ) , last_day(now());

-- extract
select now(), extract(month from now());

select now(), extract(QUARTER from now());

select now(), date_format(  now(), 'year is %y')

-- select now(), date_format(  now(), 'year is %y, my month is %M');

-- ADDDATE , NOW , CURTIME, EXTACT, YEAR, MONTH, DATE_FORMAT

use sakila;

select payment_date , year(payment_date),extract(month from payment_date) ,
date_format(payment_date, 'Hour of shopping is %H'),
DATEDIFF(payment_date, now() )from payment;
