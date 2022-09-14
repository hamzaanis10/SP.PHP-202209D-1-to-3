#1st exercise solution

select o.order_id, first_name, last_name, customer_id from customers c
join orders o
using(customer_id);

#2nd exercise solution

select product_id, name, oi.quantity, oi.unit_price from products p
join order_items oi
using(product_id);

/* do a above exercise again but imagine we have a products table not in sql_store database instead
we have a products table exactly the same as products table in sql_inventory database so how can we
join them well here is a syntax */

select product_id, name, oi.quantity, oi.unit_price from sql_inventory.products p join order_items oi
using(product_id);

#self join example 
#it means we can join table with its self

select e.employee_id, e.first_name, e.job_title, m.first_name as manager , e.reports_to as manager_id from employees e
join employees m
on e.reports_to = m.employee_id;

#Exercise # 4

select order_id, order_date, c.first_name, c.last_name, os.name from orders o
join customers c
using(customer_id)
join order_statuses os
on os.order_status_id = o.status;

#Exercise # 5

select p.date as 'Invoice date', p.invoice_id, p.amount, c.name as 'Client name', pm.name as 'Payment method'
from payment_methods pm
join payments p
on pm.payment_method_id = p.payment_method
join clients c
using(client_id);

#Exercise # 6

select order_date, order_id, c.first_name, sh.name as shipper, os.name from orders o
join customers c
using(customer_id)
left join shippers sh
using(shipper_id)
join order_statuses os
on os.order_status_id = o.status;







 