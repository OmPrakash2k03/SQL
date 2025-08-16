create database XYZ;

use XYZ;

create table empInfo(
	id int primary key,
    name varchar(25),
    salary int not null
);

insert into empInfo
(id, name, salary)
values
(1, "adam", 25000),
(2, "bob", 30000),
(3, "casey", 40000);

select * from empInfo;


-- Practice Question 4
-- In the student table : 
-- 1. change the name of column "name" to "full_name".
-- 2. delete all the students who scored marks less than 80.
-- 3. delete the column for grades.

use xyz;
create table student(
	rollno int primary key,
    name varchar(50),
    marks int,
    grade varchar(1),
    city varchar(15)
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

alter table student change name full_name varchar(50);
select * from student;

set sql_safe_updates=0;
delete from student where marks<80;
select * from student;

alter table student drop column grade;
select * from student;
