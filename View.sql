Select * from sales.order_items;

Select * from sales.orders;

Select * from  sales.customers;

Go --new batch--

CREATE VIEW sale				--creating a View for table sales.customer--
As
	Select * 
	From  sales.customers;	
	
Go
Select * from sale;				--executing the View--
 
Execute sp_rename				--renaming the View name from sale to lists--
	@objname='sale',
	@newname='lists';

Select * from lists; 

Create View listsSchemaBinding				--so that the colums in the view cannot be altered from table itself--
with SchemaBinding
As
Select customer_id,first_name,last_name,email,city,state
from sales.customers

Select* from listsSchemaBinding
Alter Table sales.customers Drop Column last_name

Go

Create View withCheckOption		--with check option--
As
Select * 
	From  sales.customers
	Where state='NY'
	With Check Option;

Select * from withCheckOption

--with multiple tables--
go
Create view withMultipleTables				
As
Select sc.customer_id,first_name,last_name,email,city,state,order_id,order_status,store_id
From sales.customers sc
Join sales.orders so
on sc.customer_id=so.customer_id

Select * from withMultipleTables

--dropping a view--
Drop View IF EXISTS					
	dbo.withMultipleTables;

