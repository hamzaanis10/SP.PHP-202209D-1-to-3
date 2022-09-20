create or replace view clients_balance as
select 
	c.client_id,
    c.name,
    sum(invoice_total - payment_total) as balance
from invoices i
join clients c
using(client_id)
group by client_id, name
order by balance desc;

# DISTINCT
# AGGREGATE FUNCTIONS
# GROUP BY/ HAVING
# UNION

create or replace view invoices_with_balance as
select
	invoice_id,
    number,
    client_id,
    invoice_total,
    payment_total,
    invoice_total - payment_total as balance,
    invoice_date,
    due_date,
    payment_date
from invoices
where (invoice_total - payment_total) > 0;


delete from invoices_with_balance where invoice_id = 1;

/*
update invoices_with_balance
set due_date = date_add(due_date, interval 3 day)
where invoice_id = 2;

update invoices_with_balance
set payment_total = invoice_total
where invoice_id = 2;
*/

create or replace view invoices_with_balance as
select
	invoice_id,
    number,
    client_id,
    invoice_total,
    payment_total,
    invoice_total - payment_total as balance,
    invoice_date,
    due_date,
    payment_date
from invoices
where (invoice_total - payment_total) > 0
with check option;


update invoices_with_balance
set payment_total = invoice_total
where invoice_id = 3;

















