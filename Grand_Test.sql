create database Grand_test;
use Grand_test;

create table bands(
	id int not null auto_increment,
    name varchar(235) not null,
	primary key(id)
);



create table albums(
	id int not null auto_increment,
    name varchar(235) not null,
    release_year int,
    band_id int not null,
	primary key(id),
    foreign key (band_id) references bands(id)
);



create table songs(
	id int not null auto_increment,
    name varchar(235) not null,
    length float not null,
    album_id int not null,
	primary key(id),
    foreign key (album_id) references albums(id)
);
	



#ANSWER 01
SELECT b.name as Band_Name from bands b;

#ANSWER 02;
SELECT * FROM ALBUMS A
ORDER BY A.NAME 
LIMIT 1;

#ANSWER 03
SELECT distinct b.name as Band from bands b
join albums a
on b.id = a.band_id;

#ANSWER 04
Select b.name as Bnad from bands b
left join albums a
on b.id = a.band_id
where a.name is null;

#ANSWER 05
select 
	a.name,
    a.release_year,
    sum(s.length) as Duration
    from songs s
    join albums a
    on a.id = s.album_id
    group by a.name,a.release_year
    order by duration desc
    limit 1;
    
#ANSWER 06
SELECT * FROM ALBUMS
WHERE RELEASE_YEAR IS NULL;

UPDATE ALBUMS
SET RELEASE_YEAR = 2022
WHERE ID = 4;

#ANSWER 07
INSERT INTO BANDS VALUES ('string');
INSERT INTO ALBUMS(name,release_year,band_id) values('wasiq',2022,8);

#ANSWER 08
SELECT 
	AVG(LENGTH) AS AVERAGE_SONG_DURATION FROM SONGS;

#ANSWER 09
SELECT 
	a.name as ALBUM,
    a.release_year,
    max(s.length) as Duration
    from songs s
    join albums a
    on a.id = s.album_id
    group by a.name,a.release_year;

#ANSWER 10
SELECT 
	B.name as BAND,
    COUNT(s.length) as Number_Of_Songs
    from songs s
    join albums a
    on a.id = s.album_id
    join bands B
    on b.id = A.BAND_id
    group by b.name ;

#ANSWER 11
DELIMITER $$
CREATE PROCEDURE GET_CLIENTS_BY_STATE(
    state char(2)
    )
    BEGIN
      select * from clients c
      where c.state = ifnull (state,c.state);    
    END $$
    DELIMITER ;

#ANSWER 12
DELIMITER $$
CREATE PROCEDURE UPDATE_BY_PAYMENTS(
    invoice_id int,
    payment_total decimal(9,2),
    payment_date date
    )
BEGIN
      update invocies i
      set i.payment_total = payment_total,
      i.payment_date = payment_date
      where i.invoice_id= invoice_id;    
END $$
DELIMITER ;

#ANSWER 13
DELIMITER $$
CREATE PROCEDURE GET_UNPAID_INVOICES_FOR_CLIENTS(
		client_id int
    )
BEGIN
      select 
      count(*) as No_Of_Invoices,
      sum(invoices_total) as Amount_To_Be_Paid
      from invoices i
      where i.client_id = client_id
      and payment = 0;    
END $$
DELIMITER ;



Marks: 55















