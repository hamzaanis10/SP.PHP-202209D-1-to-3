create table student(
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

insert into student(id, name, percentage, age, gender, city, course) values
(1,'ronaldo', 67, 34, 'M', 1, 1),
(2,'messi', 74, 33, 'M', 1, 1),
(3,'xavi', 77, 34, 'M', 2, 2),
(4,'lieke', 80, 22, 'F', 3, 3),
(5,'mertens', 24, 34, 'F', 1, 4),
(6,'gavi', 56, 18, 'M', 2, 1),
(7,'pedri', 93, 19, 'M', 1, 2);

select id, name, percentage, age, gender, c.cityname, cr.crname from student s join city c
on s.city = c.cid
join course cr 
on s.course = cr.crid;
