use sakila;

select * from payment;

select customer_id, sum(amount) , count(customer_id) from payment group by customer_id;

select payment_id, count(*) from payment group by payment_id;

select customer_id, count(customer_id) from payment
where customer_id > 3 group by customer_id;

select customer_id, count(customer_id) from payment group by customer_id;

-- error generate select customer_id, count(customer_id) from payment where count(customer_id)>30 group by customer_id; 

-- filter on aggregate functions
 select customer_id, count(customer_id) from payment group by customer_id 
 having count(customer_id)>30; 
 
 select amount, count(*), sum(amount) from payment where amount > 2 group by amount
 having count(*) > 3000;
 
select amount, count(*) as totalcount, sum(amount) from payment where amount > 2 group by amount
 having totalcount > 3000;

select amount, amount+5 as newamount from payment;	

select staff_id, Count(customer_id) AS total_customers from payment group by staff_id;

select month(payment_date), sum(amount), count(amount) 
from payment group by month(payment_date);

select amount,count(distinct(customer_id)) from payment group by amount;

select amount, count(payment_id) from payment where year(payment_date) = 2005
group by amount having count(payment_id) > 15;

select amount, count(*) from payment
where year(payment_date) = 2005
group by amount having count(*) > 15