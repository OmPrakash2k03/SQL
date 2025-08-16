create database college;
use college;
create table student (
	rollno int primary key,
    name varchar(50),
    marks int not null,
	grade varchar(1), 
    city varchar(20)
);

insert into student 
(rollno, name, marks, grade, city)
values
(101, "anil", 78, "C", "Pune"),
(102, "bhumika", 93, "A", "Mumbai"),
(103, "chetan", 85, "B", "Mumbai"),
(104, "dhruv", 96, "A", "Delhi"),
(105, "emanuel", 12, "F", "Delhi"),
(106, "farah", 82, "B", "Delhi");

select * from student;

select name, marks from student;

select distinct city from student;

select * from student where marks>80;

select * from student where city="Mumbai";

select * from student where marks>80 and city="Mumbai";

select * from student where marks+10 > 100;

select * from student where marks = 93;

select * from student where marks>80 and city="Mumbai";

select * from student where marks > 90 or city= "Mumbai";

select * from student where marks between 80 and 90;

select * from student where city in ("Delhi", "Mumbai");

select * from student where city not in ("Delhi", "Mumbai");

select * from student limit 3;

select * from student where marks>75 limit 3;

select * from student order by city asc;

select * from student order by marks asc;

select * from student order by marks desc limit 3;

select marks from student;

select max(marks) from student;

select min(marks) from student;

select count(marks) from student;

select sum(marks) from student;

select avg(marks) from student;

select city, count(name) from student group by city;

select city, avg(marks), count(name) from student group by city;

-- Write the query to find avg marks in each city in ascending order.alter
select city, avg(marks)  from student group by city order by (avg(marks)) asc;

select city, count(rollno) from student group by city having max(marks) > 90;

select city from student where grade="A" group by city having max(marks)>=93 order by city desc;

set sql_safe_updates = 0;

update student set grade = "O" where grade = "A";

select * from student;

update student set marks = 82 where rollno = 105;
update student set grade = "B" where marks between 80 and 90;
select * from student;

update student set marks = marks + 1;
select * from student;

update student set marks = 12 where rollno = 105;
select * from student;

delete from student where marks < 33;
select * from student;

alter table student add column age int not null;
select * from student;

alter table student drop column age;
select * from student;


alter table student add column age int not null default 19;
select * from student;

alter table student modify column age varchar(50);
select * from student;

alter table student change age stu_age int;
select * from student;

alter table student drop column stu_age;
select * from student;

alter table student rename to stu;
select * from stu;
-- renaming back to student
alter table stu rename to student;
select * from student;







-- creating dept and teacher tables 
-- learning foreign keys concept

create table dept (
	id int primary key,
    name varchar(50)
);

create table teacher (
	id int primary key,
    name varchar(50),
    dept_id int,
    foreign key (dept_id) references dept(id)
    on update cascade
    on delete cascade
);

insert into dept 
(id, name)
values
(101, "Science"),
(102, "English"),
(103, "Hindi");

select * from dept;

insert into teacher 
(id, name, dept_id)
values
(101, "Adam", 101),
(102, "Bob", 103),
(103, "Casey", 102),
(104, "Donald", 102);

select * from teacher;

update dept set id = 1448 where id = 103;

select * from dept;
select * from teacher;
