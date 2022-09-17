# with roll up
select
	pm.name,
    sum(amount) as total_amount
from payments p
join payment_methods pm
on p.payment_method = pm.payment_method_id
group by pm.name with rollup;

# sub queries

select * from products 
where unit_price > 
	(select unit_price from products where product_id = 3);
    
select * from products where product_id not in (select distinct product_id from order_items);


SELECT DATE_ADD(curdate(), INTERVAL 10 DAY);

SELECT DATE_FORMAT("2017-06-15", "%M");

select time_format(now(), '%H:%i%p');
































    

