create database regex123;

use regex123;
CREATE TABLE Student (
    StudentID INT PRIMARY KEY,
    StudentName VARCHAR(50)
);

CREATE TABLE Enrollment (
    EnrollmentID INT PRIMARY KEY,
    StudentID INT,
    CourseName VARCHAR(50),
    FOREIGN KEY (StudentID) REFERENCES Student(StudentID)
);


INSERT INTO Student (StudentID, StudentName) VALUES
(1, 'Alice'),
(2, 'Bob'),
(3, 'Charlie'),
(4, 'David'),
(5, 'Eva'),
(6, 'Frank'),
(7, 'Grace'),
(8, 'Helen'),
(9, 'Ian'),
(10, 'Jack');


INSERT INTO Enrollment (EnrollmentID, StudentID, CourseName) VALUES
(101, 1, 'Math'),
(102, 2, 'Physics'),
(103, 3, 'Chemistry'),
(104, 1, 'English'),
(105, 5, 'Biology'),
(106, 7, 'History'),
(107, 10, 'Math');

create database regex123;
use regex123;

CREATE TABLE employees (
    employee_id INT PRIMARY KEY,
    name VARCHAR(100),
    manager_id INT,
    FOREIGN KEY (manager_id) REFERENCES employees(employee_id)
);


INSERT INTO employees (employee_id, name, manager_id) VALUES
(1, 'Alice', NULL),       -- CEO
(2, 'Bob', 1),            -- VP of Sales
(3, 'Carol', 1),          -- VP of Engineering
(4, 'David', 2),          -- Sales Manager 1
(5, 'Eve', 2),            -- Sales Manager 2
(6, 'Frank', 3),          -- Engineering Manager 1
(7, 'Grace', 3),          -- Engineering Manager 2
(8, 'Heidi', 4),          -- Salesperson under David
(9, 'Ivan', 4),           -- Salesperson under David
(10, 'Judy', 5),          -- Salesperson under Eve
(11, 'Mallory', 6),       -- Engineer under Frank
(12, 'Niaj', 6),          -- Engineer under Frank
(13, 'Olivia', 7),        -- Engineer under Grace
(14, 'Peggy', 7),         -- Engineer under Grace
(15, 'Trent', 3);         -- Tech Lead under Carol (no direct reports)

select * from employees;
select * from student;
select * from Enrollment;

select s.studentid, s.studentname, e.courseName from student as s
left join enrollment as e on s.studentid=e.studentid;

select s.studentname from student as s
inner join enrollment as e on s.studentid=e.studentid;

select s.studentid, s.studentname, e.enrollmentid from student as s
left join enrollment as e on s.studentid=e.studentid
where enrollmentid is null;

select s.studentid, count(e.enrollmentid) from student as s
left join enrollment as e on s.studentid=e.studentid
group by s.studentid;

select e.cousename ,count(s.studentid),count(e.cousename)from student as s
inner join enrollment as e on s.studentid=e.studentid
group by e.coursename;




-- natural join

create database  regex123;

use regex123;
create table product(pid  int,  pname  varchar(20), price int);
insert into product values(100,'iphone',4000), (101,'mi tv', 3000),
(102,'fridge',5000), (103,'cover',500);


create table orders( orderid int, city varchar(20), productid int);
insert into orders values(994,'jaipur', 100),(995,'goa',102), (996,'J&K', 100), (997,'japan',102),
(998,'bhutan', 110);

select * from product;
select * from orders;
-- cross join or cartesian join
-- each row of 1st table is combined with each row of another table(m*n)
select p.pid,p.price,o.productid, o.city from product as p
cross join orders as o;
-- left, self,cross

-- natural join (bakwas join)
-- which works on common name of columns
-- no common column so working as cross join
select * from product;
select p.pid,p.price,o.productid, o.city from product as p
natural join orders as o;

alter table orders rename column productid to pid;
select * from orders;

-- common column so working as inner join
select p.pid,p.price,o.pid, o.city from product as p
natural join orders as o;
 use sakila;
 select * from actor;
 select * from film_actor;

select a.actor_id,film_id,a.first_name from actor as a join film_actor as f
on a.actor_id = f.actor_id;

select a.actor_id,film_id,a.first_name from actor as a join film_actor as f
on a.actor_id = f.actor_id;

select * from film;
select * from film_actor;
-- movie name penelog kon kon si movie m kaam kiya h actor, film_actor, film actor id, movie name

-- join actor and film_actor (actor_id)
-- join film_actor and film (film_id)

select a.actor_id,a.first_name,fa.actor_id,fa.film_id, flm.film_id as film ,flm.title from
actor a join film_actor as fa join film as flm
where a.actor_id=fa.actor_id and fa.film_id = flm.film_id
order by first_name;
-- what is sub query and single row sub query
