# 1st ques

select first_name, last_name, customer_id, o.order_id 
from customers c
join
orders o
using(customer_id)
;

# 2nd ques
use store;

select customer_id, concat(first_name, ' ', last_name) as name, points, 'Gold' as type from customers where points > 2999
union
select customer_id, concat(first_name, ' ', last_name) as name, points, 'Silver' as type from customers where points between 1000 and 2999
union
select customer_id, concat(first_name, ' ', last_name) as name, points, 'Bronze' as type from customers where points < 1000
; 

#3rd ques
use store;
select o.order_date, o.order_id, c.first_name, s.name, os.name
from orders o
join
customers c
using (customer_id)
left join shippers s
using (shipper_id)
join order_statuses os
on os.order_status_id = o.status

;

# 4th ques
use invoicing;

select p.date, p.invoice_id, p.amount, c.name, pm.name as 'pmt method' 
from payment_methods pm
join payments p on pm.payment_method_id = p.payment_method
join clients c using (client_id)
; 

#5th ques
use sql_hr;
select employee_id, first_name, last_name, reports_to as manager from employees;

#6th ques
use store;

select product_id, name, quantity, oi.unit_price
from products p 
join order_items oi
using(product_id);












