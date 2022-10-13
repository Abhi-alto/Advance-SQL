create database demofile;

use demofile

create table file1(
	ID int NOT NULL,
	Name varchar(255) NOT NULL,
	Email varchar(255) Not Null UNIQUE,
	Age int CHECK(Age >= 18),
	City varchar(255) DEFAULT 'Allahabad'
	);

select * from file1

insert into file1(ID,Name,Email,Age,City)
	values(1,'Abhishek','abhisheksrivastava9719@gmail.com',24,''),
	(2,'Siddharth','siddhartsigh@gmail.com',25,'Sultanpur'),
    (3,'Abhi','abhi.Sharma891052@gmail.com',26,''),
	(4,'Shubham','sinha9719@gmail.com',18,'Mumbai'),
	(5,'Vishal','madhwaniVishal@gmail.com',24,''),
	(6,'Rishabh','rishabhGupta56@gmail.com',25,'Kota'),
	(7,'Chandan','chandanKesar@gmail.com',24,'Varanasi');

insert into file1(ID,Name,Email,Age)
	values(1,'Arnav','abhishek9719@gmail.com',24)