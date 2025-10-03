use sakila;

select * from payment;

select count(customer_id), amount from payment group by amount;

select customer_id , count(amount) from payment group by customer_id;

select customer_id , amount,count(amount) from payment group by customer_id,amount;

select year(payment_id) , staff_id,sum(amount) from payment group by year(payment_date), staff_id; 

-- order by (sort) arranh=ging the date into assending and descending
select * from payment order by rental_id;

select * from payment order by customer_id desc;

select * from payment order by customer_id desc, amount desc;

select * from payment order by customer_id , amount;

-- conditional functions
select customer_id, amount, if(amount>3, "high","low") from payment;

select customer_id, amount, if(amount=2.99, "high", if(amount=5.99,"AVG","low")) from payment;

select customer_id,amount,
case
    when amount=2.99 then "high"
    when amount=5.99 then "avg"
    else"low"
end as col
from payment;

select * from payment;

select customer_id,
case
when customer_id > 4 then "users"
when customer_id > 1 then "hello"
else"regex"
end 
from payment;

select 
    customer_id,
    case
        when customer_id > 4 then 'users'
        when customer_id > 1 then 'hello'
        else 'regex'
    end as status
from customer;
