#create table for city
create table city (
	cid int not null auto_increment,
    cityname varchar(50) not null,
    primary key(cid)
    
);

#insert data into city table
insert into city(cityname)values
('karachi'),
('hydrabad'),
('balochistan'),
('islamabad'),
('lahore');

#now create table for course

create table course (
	crid int not null auto_increment,
    crname varchar(50) not null,
    primary key(crid)
);

#insert data into course

insert into course(crname)values
('cpism'),
('php pro'),
('prime 2.0'),
('dism'),
('english language');


#now create student table

create table student (
	id int not null,
    name varchar(50) not null,
    percentage int not null,
    age int not null,
    gender varchar(1) not null,
    city int not null,
    course int not null,
    primary key(id),
    foreign key(city) references city(cid),
    foreign key(course) references course(crid)
);

#insert data into student

insert into student (id, name, percentage, age, gender, city, course)values
(1, 'hamza', 84, 35, 'M', 1, 2),
(2, 'rizwan', 35, 21, 'M', 1, 1),
(3, 'wasiq', 22, 45, 'M', 2, 1),
(4, 'misbah', 19, 82, 'F', 3, 1),
(5, 'murtaza', 18, 46, 'M', 1, 2),
(6, 'hassan', 25, 45, 'M', 2, 4),
(7, 'asif', 36, 65, 'M', 1, 5);


select id, name, percentage, age, gender, c.cityname, cr.crname  from student s 
join city c
on s.city = c.cid
join course cr
on s.course = cr.crid
where c.cityname = 'karachi'
order by age;










