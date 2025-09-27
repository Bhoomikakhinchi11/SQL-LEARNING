-- round , date
-- string ,numeric, date

-- single row functions (scaler functions)
-- function haar now => output

-- multi row function ( aggregate function)
use sakila;
select amount , round(amount) from payment;

select sum(amount) from payment;

select sum(amount) , sum(round(amount))from payment;

select sum(amount) , count(amount)from payment;  -- count means ginna

select count(amount) from payment where amount>5;

select count(address_id), count(address2), count(*) from address;

select * from payment;

select max(amount), min(amount), sum(amount), count(amount), avg(amount) from payment;

select distinct amount from payment;  -- distinct => unique values find out

select distinct amount, customer_id from payment;

select count(distinct amount), count(amount) from payment;

select distinct year(payment_date) from payment;

select payment_id,amount from payment where year(payment_date)=2005;

select count(distinct customer_id) from payment where month(payment_date)=06; 

select max(amount),avg(amount), max(amount)-avg(amount) FROM PAYMENT where amount>2 and year(payment_date)=2006;

-- group by
select * from payment where customer_id=2;

select count(payment_id) from payment where customer_id=2;

select count(payment_id) from payment where customer_id=4;

-- group by statement( grouping similar values)
select customer_id from payment group by customer_id;

select customer_id,COUNT(payment_id)from payment group by customer_id;
