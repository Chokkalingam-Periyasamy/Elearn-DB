create database elearn
use elearn
create table staff(staffid int primary key identity(1,1),name nvarchar(30),age varchar(4),gender varchar(6),city nvarchar(50),
expertise varchar(100),mobile varchar(10),email nvarchar(50),password nvarchar(20));

insert into staff values('Kishore','46','Male','Coimbatore','Full stack Develpoer','8734598621','kishore@gmail.com','kishore');

create table users(userid int primary key identity(1,1),name nvarchar(30),age varchar(4),gender varchar(6),address nvarchar(50),
mobile varchar(10),email nvarchar(20),password nvarchar(20),image varchar(50));
insert into users values('Chokka','21','Male','Madurai','9876543210','chokka@gmail.com','chokka','~\Image\s.jpg');


insert into users values('Chokkalingam','23','Male','Madurai','8248565398','chokka23@gmail.com','chokka','~\Image\s.jpg');


create table courses(courseid int primary key identity(101,1),coursename nvarchar(100),description nvarchar(100));
insert into courses values('Programming in C++','Understand C++ from basic to advnace','D:\Elearning\Elearn\wwwroot\images\bb.jpg');

insert into courses values('Programming in React','Understand C from basic to advnace','~\images\bb.jpg',499);
insert into courses values('Programming in Ruby','Understand C from basic to advnace','~/images/bb.jpg');



create table Usercourses(stuid int references users(userid),coid int references courses(courseid) primary key(stuid,coid))


create table modules(moduleid int primary key identity(501,1),courseid int, modulename nvarchar(50),video varchar(50))


select * from staff
select * from users
select * from courses

select * from Usercourses
select * from modules

ALTER TABLE courses
ADD image varchar(100);
Add amount varchar(50);


