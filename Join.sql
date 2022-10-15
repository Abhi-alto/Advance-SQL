create table file2(
			ID int,
			Name varchar(250),
			company varchar(250)
			);

create table file3(
			Id int,
			department varchar(250),
			age int
			);

create table file5(
			Id int,
			age int,
			city varchar(250),
			state varchar(250)
			);

insert into file2([ID],[Name],[company])
			values(1,'Abhishek','HCL'),
				  (2,'Aman','Infosys'),
				  (3,'Riya','Nicrosoft'),
			      (4,'Shubham','JP Morgan');

insert into file3([ID],[department],[age])
			values(1,'Mechanical',24),
				  (2,'Mechanical',24),
				  (3,'CS',28);

insert into file5([ID],[city],[age],[state])
			values(1,'Prayagraj',24,'UP'),
				  (2,'Bhopal',24,'MP'),
				  (3,'Kullu',28,'HP'),
				  (4,'Patna',25,'Bihar'),
				  (5,'Jaipur',28,'Rajasthan');

SELECT file2.ID,company,department,age from file2
		Inner Join  file3
		on file2.ID=file3.ID;
SELECT file3.ID,Name,company,department,age from file3
		Inner Join  file2
		on file2.ID=file3.ID;

SELECT department,city,state from file3
		Inner Join  file5
		on file3.ID=file5.ID;


SELECT file2.ID,Name,company,department,age from file2
		Left Join  file3
		on file2.ID=file3.ID;

SELECT file3.ID,Name,company,department,age from file3
		Left Join  file2
		on file2.ID=file3.ID;

SELECT file2.ID,Name,company,department,age from file2
		Right Join  file3
		on file2.ID=file3.ID;

SELECT file3.ID,Name,company,department,age from file3
		Right Join  file2
		on file2.ID=file3.ID;

SELECT file3.ID,department,city,file3.age,state from file5
		Full Join  file3
		on file3.ID=file5.ID;

SELECT file3.ID,department,city,file3.age,state from file5
		Cross Join  file3;