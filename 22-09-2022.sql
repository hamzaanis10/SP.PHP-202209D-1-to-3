# procedure get invoices by clients
DELIMITER $$
USE `invoicing`$$
CREATE PROCEDURE `get_invoices_by_clients` 
(
	client_id int
)
BEGIN
	select * from invoices i
    where i.client_id = client_id;
END$$

DELIMITER ;


# procedure get clients by state
DELIMITER $$
USE `invoicing`$$
CREATE PROCEDURE `get_clients_by_state` 
(
	state char(2)
)
BEGIN
	if state is null then
		set state = 'CA';
	end if;
    select * from clients c
    where c.state = state;
END$$


call get_clients_by_state('ny');


# join with sp

DELIMITER $$
USE `invoicing`$$
CREATE PROCEDURE `get_invoices` 
(
	client_id int
)
BEGIN
	select 
		c.name,
        i.client_id,
        i.number,
        i.invoice_total,
        i.invoice_id,
        i.invoice_date
	from invoices i
    join clients c
    using(client_id)
    where i.client_id = client_id;
END$$

DELIMITER ;











