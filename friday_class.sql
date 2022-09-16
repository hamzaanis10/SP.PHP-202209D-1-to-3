# group by

select client_id, sum(invoice_total) as total_sales from invoices
group by client_id;

select client_id, sum(invoice_total) as total_sales
from invoices
where invoice_date >= '2019-07-01'
group by client_id;

#group by with join

select client_id, c.city, c.state, sum(invoice_total) as total_sales from invoices i
join clients c
using(client_id)
group by client_id, c.city, c.state;


select date, pm.name as payment_method, sum(amount) as total_amount
from payments p
join payment_methods pm
on p.payment_method = pm.payment_method_id
group by date, pm.name;

#having clause 

select client_id, sum(invoice_total) as total_sales,
count(invoice_total) as total_no_inoices
from invoices
group by client_id
having total_sales > 500 and total_no_inoices > 5;
















