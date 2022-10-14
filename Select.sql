use Psuedo;

select * from production.products;

select product_name from production.products

select * from sales.customers
select first_name,last_name from sales.customers 
			Where city='Orchard Park'

select first_name,last_name from sales.customers 
			Where city='Orchard Park'
			Order by first_name

select city, COUNT (*) from sales.customers 
		Where state = 'NY'
			Group by city
			order by city

SELECT
    city,
    COUNT (*)
FROM
    sales.customers
WHERE
    state = 'NY'
GROUP BY
    city
HAVING
    COUNT (*) > 20
ORDER BY
    city;