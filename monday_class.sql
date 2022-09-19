# if statements
select
	product_id,
    name,
    count(*) as orders,
    if (count(*) > 1, 'Many times', 'Once') as product_quantity
from products p
join order_items oi
using(product_id)
group by product_id, name;



#case statements
select 
	order_id,
    case
		when year(order_date) = year(now()) - 3 then 'Active'
        when year(order_date) = year(now()) - 4 then 'Last year'
        when year(order_date) < year(now()) - 4 then 'Archived'
        else 'Future'
	end as category
from orders;


select
	concat(first_name, ' ', last_name) as full_name,
    points,
    case
		when points > 3000 then 'Gold'
        when points >= 2000 then 'Silver'
        else 'Bronze'
	end as type
from customers;

# create view 

#sales by client view

create view sales_by_client as
select
	client_id,
    name,
    sum(invoice_total) as total_sales
from clients c
join invoices i 
using(client_id)
group by client_id, name;


#clients_balance

create view clients_balance as
select 
	c.client_id,
    c.name,
    sum(invoice_total - payment_total) as balance
from invoices i
join clients c
using(client_id)
group by client_id, name














