# joining across databases

select p.product_id, p.name, oi.quantity, oi.unit_price from sql_inventory.products p 
join order_items oi
using(product_id);

# using clause example

select * from orders o 
join shippers sh
using(shipper_id);

select * from orders o 
join order_statuses os
on o.status = os.order_status_id;

select o.order_id, first_name, last_name, customer_id from customers c
join orders o 
using(customer_id);

# self join

/*
select e.employee_id, e.first_name, m.first_name as manager, m.employee_id as manager_id from employees e
join employees m
on e.reports_to = m.employee_id;
*/

# union operator

select order_id, order_date, 'Active' as status from orders where order_date >= '2019-01-01'
union
select order_id, order_date, 'Archived' as status from orders where order_date < '2019-01-01';

select first_name from customers
union
select name from shippers;

# copy of a table

create table orders_archived as select * from orders;












