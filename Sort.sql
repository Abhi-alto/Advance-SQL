Select * FROM sales.customers
		Order by first_name

Select * FROM sales.customers
		Order by first_name, City Desc       -- Sorting by first name in asceneding order and City in dec.order -- 

Select first_name, last_name, city, state FROM sales.customers
		Order by street

Select first_name, last_name, city FROM sales.customers
		Order by LEN(first_name)							--LEN() FUNCTION GIVESUS THE LENGTH OF THE STRING --

Select first_name, city FROM sales.customers
		Order by 2
													-- 1 and 2 represent the column here first_name and and is always taken from the list specified in the above statement here first_name and city --