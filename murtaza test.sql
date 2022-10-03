# question 1
select name as 'Band Name' from bands; 

# question 2
select * from albums
where release_year is not null
order by release_year limit 1;       

# question 3 

select distinct bands.name from bands
join albums
on bands.id = albums.band_id;       

# question 4

select distinct bands.name from bands
left join albums
on  not bands.id = albums.band_id;       

# question 5
select a.name as 'Band_name',
a.release_year,
sum(s.length) as duration
from albums a
join songs s 
on a.id = s.album_id
group by a.name, a.release_year
order by duration desc 
limit 1;                        

# question 6

select * from albums 
where release_year is null;

update albums 
set release_year  = '2022'
where id =4;               









#question 7
iNSERT  INTO albums(name,release_year,band_id) 
values('murtaza',2022,5);              

#question 8



#question 11

USE `invoicing`;
DROP procedure IF EXISTS `get_clients_by_state`;

DELIMITER $$
USE `invoicing`$$
CREATE PROCEDURE `get_clients_by_state` (
params 
 char (2)
   
)
BEGIN
select * from clients c
where c.state = params;
END$$

DELIMITER ;                           

#question 12


DELIMITER $$
USE `invoicing`$$
CREATE PROCEDURE `update_payments` 
( invoice_id int,   
payment_total decimal(9,2)

)
BEGIN
update invoices 
set i.payment_total  = payment_total
where i.invoice_id = invoice_id;
END$$ 

DELIMITER ;

 
 Marks: 39






