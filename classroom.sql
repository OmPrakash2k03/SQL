create database classroom;
use classroom;
create table student (
	id int primary key,
    name varchar(50)
);
create table course (
	id int primary key,
    course varchar(50)
);

insert into student
(id, name)
values 
(101, "adam"),
(102, "bob"),
(103, "casey");

insert into course 
(id, course)
values
(102, "english"),
(105, "math"),
(103, "science"),
(107, "computer science");

-- INNER JOIN
select *
from student
inner join course 
on student.id = course.id;

-- ALIAS (alternate name)
select * 
from student as s
inner join course as c
on s.id=c.id;

-- LEFT JOIN
select * 
from student
left join course
on student.id = course.id;

-- RIGHT JOIN
select *
from student
right join course
on student.id = course.id;

-- FULL JOIN
select * 
from student 
left join course
on student.id = course.id
union
select * 
from student
right join course
on student.id = course.id;

-- LEFT EXCLUSIVE JOIN
select * 
from student
left join course
on student.id=course.id
where course.id is null;

-- RIGHT EXCLUSIVE JOIN
select *
from student
right join course
on student.id=course.id
where student.id is null;

-- FULL EXCLUSIVE JOIN
select *
from student
left join course
on student.id=course.id
where course.id is null
union
select * 
from student
right join course
on student.id=course.id
where student.id is null;


-- SELF JOIN
create table employee(
	id int primary key,
    name varchar(50),
    manager_id int
);
insert into employee
(id, name, manager_id)
values
(101, "adam", 103),
(102, "bob", 104),
(103, "casey", null),
(104, "donald", 103);

select * from employee;

select a.name as manager_name, b.name
from employee as a
join employee as b
on a.id=b.manager_id;

-- UNION
select name from employee
union 
select name from employee;

-- UNION ALL
select name from employee
union all
select name from employee;
