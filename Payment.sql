create database payment;
use payment;
create table custPay (
	customer_id int primary key,
    customer varchar(25),
    mode varchar(20),
    city varchar(20)
);

insert into custPay 
(customer_id, customer, mode, city)
values
(101, "Olivia Barrrett", "NetBanking", "Portland"),
(102, "Ethan Sinclair", "Credit Card", "Miami"),
(103, "Maya Hernandez", "Credit Card", "Seattle"),
(104, "Liam Donovan", "NetBanking", "Denver"),
(105, "Sophia Nguyen", "Credit Card", "New Orleans"),
(106, "Caleb Foster", "Debit Card", "Minneapolis"),
(107, "Ava Patel", "Debit Card", "Phoenix"),
(108, "Lucas Carter", "NetBanking", "Boston"),
(109, "Isabella Martinez", "NetBanking", "Nashville"),
(110, "Jackson Brooks", "Credit Card", "Boston");

select * from custPay;

select mode, count(customer) from custPay group by mode;
