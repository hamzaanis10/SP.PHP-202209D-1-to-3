delimiter $$
CREATE PROCEDURE customers_data  
(
customer_id int
)
BEGIN
select  customer_id, concat(first_name, last_name) as full_name, p.name
from customers c
join orders o
using (customer_id)
join order_items oi
using (order_id)
join products p 
where c.customer_id= customer_id;
END $$
 delimiter ;