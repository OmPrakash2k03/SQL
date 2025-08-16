create database query;
use query;
create table student (
	rollno int primary key,
    name varchar(40),
    marks int
);
insert into student
(rollno, name, marks)
values
(101, "anil", 78),
(102, "bhumika", 93),
(103, "chetan", 85),
(104, "dhruv", 96),
(105, "emanuel", 92),
(106, "farah", 82);

select avg(marks) from student;

select name, marks from student where marks > 87.6667;

select name, marks from student where marks > (select avg(marks) from student);

select rollno from student where rollno%2=0;

select rollno, name from student where rollno in (102, 104, 106);

select rollno, name from student where rollno in (select rollno from student where rollno % 2 = 0);

drop table student;

create table student (
	rollno int primary key,
    name varchar(40),
    marks int,
    city varchar(15)
);

insert into student
(rollno, name, marks, city)
values 
(101, "anil", 78, "Pune"),
(102, "bhumika", 93, "Mumbai"),
(103, "chetan", 85, "Mumbai"),
(104, "dhruv", 96, "Delhi"),
(105, "emanuel", 92, "Delhi"),
(106, "farah", 82, "Delhi");

select * from student where city = "Delhi";

select max(marks) from (select * from student where city = "Delhi") as temp;

create view view1 as
select rollno, name, marks from student;
select * from view1;
