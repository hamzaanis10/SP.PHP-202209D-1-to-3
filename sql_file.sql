select order_date, order_id, c.first_name, sh.name, os.name from orders o
join customers c
using(customer_id)
left join shippers sh
using(shipper_id)
join order_statuses os
on os.order_status_id = o.status;

# union operator: with union operator we combine rows with different select statement

select order_id, order_date, 'Active' as status from orders where order_date >= '2019-01-01'
union
select order_id, order_date, 'Archived' as status from orders where order_date < '2019-01-01';

# another example of union operator
select first_name from customers
union
select name from shippers;

# Class Task
select customer_id, first_name, points, 'Bronze' as type
from customers
where points < 1000
union
select customer_id, first_name, points, 'Silver' as type
from customers
where points between 1000 and 2000
union
select customer_id, first_name, points, 'Gold' as type
from customers
where points > 3000
order by first_name;

# first insert customers

insert into customers values(default, 'miss', 'aisha', default, default, 'aptech shahrah e faisal', 'city', 'CA', 250);

# now we insert order for a specific customer

insert into orders(customer_id, order_date, status)
values(1, '2019-01-02', 1);

/* now we insert what the items they are ordering so we use last_insert_id so whatever our last order
id is it will automatically get that id and insert the order item for them */ 

insert into order_items values
(last_insert_id(), 1, 1, 2.95),
(last_insert_id(), 2, 1, 3.95);

# Create a copy of a table

create table order_archived as 
select * from orders;

# another example with where clause

insert into order_archived
select * from orders
where order_date < '2019-01-01';

# another example using invoicing database with join statement

select * from invoices i 
join clients c
using(client_id);

create table invoices_archived as
select
	i.invoice_id,
    i.number,
    c.name as client_name,
    i.invoice_total,
    i.invoice_date,
    i.payment_date,
    i.due_date
from invoices i
join clients c
using(client_id)
where payment_date is not null;

# group by statement

select city, count(city)
from student
group by city;



















