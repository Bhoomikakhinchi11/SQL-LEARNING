create database regex123;

use regex123;
create table product(pid  int,  pname  varchar(20), price int);
insert into product values(100,'iphone',4000), (101,'mi tv', 3000),
(102,'fridge',5000), (103,'cover',500);


create table orders( orderid int, city varchar(20), productid int);
insert into orders values(994,'jaipur', 100),(995,'goa',102), (996,'J&K', 100), (997,'japan',102),
(998,'bhutan', 110);

select * from product;

select prd.pid,pname,ord.productid, ord.city
from product as prd join orders as ord 
where prd.pid=ord.productid;     

select ord.productid, ord.city from orders as ord;

-- ordered is pimary key, productid is foreign key that refer to primary key of product table(pid)
select * from orders;

-- pid is primary key
select * from product;

select product.pid,product.pname,product.price,orders.city from product
join
orders where product.pid = orders.productid;

select product.pid,product.pname,product.price,orders.city from product
join
orders where product.pid = orders.productid and pname='iphone';