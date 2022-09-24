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

explain select studentid, first_name, last_name from student where class = 'cs';

create index class_index on student(class);

explain select studentid, first_name, last_name from student where class = 'cs';

show indexes from student;


CREATE TABLE Employee_Detail(    
    ID int AUTO_INCREMENT PRIMARY KEY,     
    Name varchar(45),     
    Email varchar(45),    
    Phone varchar(15),     
    City varchar(25),  
    UNIQUE KEY unique_email (Email)  
);  

show indexes from Employee_Detail;


INSERT INTO Employee_Detail(ID, Name, Email, Phone, City)    
VALUES (1, 'Peter', 'peter@javatpoint.com', '49562959223', 'Texas'),    
(2, 'Suzi', 'suzi@javatpoint.com', '70679834522', 'California'),    
(3, 'Joseph', 'joseph@javatpoint.com', '09896765374', 'Alaska'); 

create unique index index_name_and_phone
on Employee_Detail(Name, Phone);






















