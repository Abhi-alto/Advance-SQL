select * from production.products
OFFSET 7 ROWS 
FETCH NEXT 10 rows ONLY	;				


SELECT
    product_name,
    list_price
FROM
    production.products
ORDER BY
    list_price,
    product_name 
OFFSET 10 ROWS 
FETCH NEXT 10 ROWS ONLY;

SELECT
    product_name,
    list_price
FROM
    production.products
ORDER BY
    list_price DESC,
    product_name 
OFFSET 0 ROWS 
FETCH FIRST 7 ROWS ONLY;

Select top 10 * from production.products

SELECT TOP 22 PERCENT product_name FROM production.products
ORDER BY list_price DESC;

SELECT TOP 3 WITH TIES					--Top with ties returns value related to columns provided --
    product_name,		
    list_price
FROM
    production.products
ORDER BY 
    list_price DESC;