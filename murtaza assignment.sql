# EXERCISE 1
select customer_id, first_name,points,'Bronze' as status from customers where points < 1000
union
select customer_id, first_name,points,'Silver' as status from customers where points between 1000 and 2000
union
select customer_id, first_name,points,'Gold' as status from customers where points > 3000;

# Exercise 2

select order_id, order_date, c.first_name, c.last_name, os.name from orders o
join customers c
using(customer_id)
join order_statuses os
on os.order_status_id = o.status;

# Exercise 3
use invoicing;
select p.date as 'Invoice date', p.invoice_id, p.amount, c.name as 'Client name', pm.name as 'Payment method'
from payment_methods pm
join payments p
on pm.payment_method_id = p.payment_method
join clients c
using(client_id);


# Exercise 4
select order_date, order_id, c.first_name, sh.name as shipper, os.name from orders o
join customers c
using(customer_id)
left join shippers sh
using(shipper_id)
join order_statuses os
on os.order_status_id = o.status;




