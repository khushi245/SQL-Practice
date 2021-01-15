create database customer;
use customer;
create table customer_info(
	OrderID int,
	CustomerID int primary key,
	CustomerName varchar(50));
create table order_info(
	OrderID int,
	Item varchar(50),
	OrderDate date,
    Order_Country varchar(50));
show columns from customer_info;
show columns from order_info;
insert into `customer_info` values (1,100,"Araon"),(2,101,"Betty"),(3,102,"Archie"),(4,103,"C"),(5,104,"D"),(6,105,"E"),(7,106,"F"),(8,107,"G"),(9,108,"H");
insert into `order_info` values (1,"Clothes",'2010-10-13',"USA"),(2,"Pencil",'2010-10-14',"USA"),(3,"Pencil",'2010-10-15',"USA"),(4,"Clothes",'2010-10-16',"Australia"),(5,"Pencil",'2010-10-17',"Australia"),(6,"Pencil",'2010-10-18',"Australia"),(7,"Clothes",'2010-10-19',"India"),(8,"Pencil",'2010-10-20',"India"),(9,"Pencil",'2010-10-21',"India");
update customer_info
	set CustomerName="Jughead"
	where CustomerId=104;
select * 
	from customer_info
	inner join order_info
	on customer_info.OrderID=order_info.OrderID;
delete from customer_info where customerid=100;
select * from order_info;
create view name_date as
	select CustomerName, OrderDate
    from customer_info as c
    inner join order_info as o
    on c.OrderID=o.OrderID
select *
	from name_date;
select customername 
	from customer_info
	where customername like "a%";
select OrderID,order_country, count(*)
	from order_info
	group by order_country
	having OrderID>5;
select OrderID, order_country
	from order_info
	where OrderID>5;
select *
	from customer_info
	order by customername 
	limit 5;
alter table order_info
add order_abc varchar(50);
