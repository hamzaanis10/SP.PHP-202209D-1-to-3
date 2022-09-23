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

DELIMITER ;

# sp using short syntax

DELIMITER $$
USE `invoicing`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `get_clients_by_state`(
	state char(2)
)
BEGIN
	select * from clients c 
    where c.state = ifnull(state, c.state);
END$$

DELIMITER ;


call get_clients_by_state(NULL);

# get payments
DELIMITER $$
USE `invoicing`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `get_payments`(
	client_id int,
    payment_method tinyint
)
BEGIN
	select * from payments p
		where
        p.client_id = ifnull(client_id, p.client_id) and
        p.payment_method = ifnull(payment_method, p.payment_method);
END$$

DELIMITER ;


call get_payments(5, 2);





















