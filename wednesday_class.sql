# stored procedures
DELIMITER $$
create procedure get_clients()
begin
	select * from clients;
end$$

DELIMITER ;


# calling stored procedures

# call get_clients();

# another example of stored procedures

delimiter $$
create procedure invoices_with_balance()
begin
	select * from invoices_with_balance
	where balance > 0;
end$$
delimiter ;

drop procedure if exists payments;

# create stored_procedures with params and args

delimiter $$
create procedure get_clients_by_state
(
params char(2)
)
begin
	select * from clients c
    where c.state = params;
end$$

delimiter ;

call get_clients_by_state('VA')





















