# sp for update operation

DELIMITER $$
USE `invoicing`$$
CREATE PROCEDURE `update_payments` 
(
	invoice_id int,
    payment_total decimal(9,2),
    payment_date date
)
BEGIN
	update invoices i
    set i.payment_total = payment_total,
    i.payment_date = payment_date
    where i.invoice_id = invoice_id;
END$$

DELIMITER ;

call update_payments(3, -200, '2022-04-24');

# validation for sp

DELIMITER $$
USE `invoicing`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `update_payments`(
	invoice_id int,
    payment_total decimal(9,2),
    payment_date date
)
BEGIN
	if payment_total <= 0 then
		signal sqlstate '22003'
        set message_text = 'Invalid payment amount value';
	end if;
	update invoices i
    set i.payment_total = payment_total,
    i.payment_date = payment_date
    where i.invoice_id = invoice_id;
END$$

DELIMITER ;

# sp using aggregate function

DELIMITER $$
USE `invoicing`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `get_unpaid_invoices_for_clients`(
	client_id int
)
BEGIN
	select
		count(*) as no_of_invoices,
        sum(invoice_total) as amount_to_be_paid
	from invoices i
    where i.client_id = client_id 
		and payment_total = 0;
END$$

DELIMITER ;

# creating variables

DELIMITER $$
USE `invoicing`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `get_risk_factor`()
BEGIN
	declare risk_factor decimal(9,2);
    declare invoices_total decimal(9,2);
    declare invoices_count int;
    
    select
		count(*) as no_of_invoices,
        sum(invoice_total) as amount_to_be_paid
	into invoices_count, invoices_total
    from invoices;
    
    set risk_factor = invoices_total / invoices_count * 5;
    
    select risk_factor;
END$$

DELIMITER ;

#functions

DELIMITER $$
USE `invoicing`$$
CREATE DEFINER=`root`@`localhost` FUNCTION `get_risk_factor_for_specific_client`(
	client_id int
) RETURNS int
    READS SQL DATA
BEGIN
	declare risk_factor decimal(9,2);
    declare invoices_total decimal(9,2);
    declare invoices_count int;
    
    select
		count(*) as no_of_invoices,
        sum(invoice_total) as amount_to_be_paid
	into invoices_count, invoices_total
    from invoices i
    where i.client_id = client_id;
    
    set risk_factor = invoices_total / invoices_count * 5;
	RETURN ifnull(risk_factor, 0);
END$$

DELIMITER ;

# indexing in mysql

create table student(
	studentid int not null auto_increment,
    first_name varchar(255) not null,
    last_name varchar(255),
    class char(2) not null,
    age int not null,
    primary key(studentid)
);

insert into student()
values
(default, 'miss', 'shoa', 'CS', 28),
(default, 'miss', 'aqsa', 'EE', 24),
(default, 'sir', 'ali', 'SP', 25),
(default, 'sir', 'aqib', 'PY', 30),
(default, 'miss', 'zainab', 'IT', 26),
(default, 'miss', 'ramsha', 'yu', 28);

update student
set class = 'CS'
where studentid in (3,4,5);



show indexes from student;

drop index class_index on student;

create index class_index on student(class);

explain select studentid, first_name, last_name from student where class = 'cs';









