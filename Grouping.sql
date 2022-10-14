SELECT
    customer_id,
    YEAR (order_date) order_year
FROM
    sales.orders
WHERE
    customer_id IN (1, 2)
ORDER BY
    customer_id;


SELECT
	customer_id,
    YEAR (order_date) order_year
FROM
    sales.orders
WHERE
    customer_id IN (1, 2)
GROUP BY
    customer_id,
    YEAR (order_date)
ORDER BY
    customer_id;


SELECT
    city,
    state,
    COUNT (customer_id) customer_count
FROM
    sales.customers
GROUP BY
    state,
    city
ORDER BY
    city,
    state;


--SELECT
  --  select_list
--FROM
  --  table_name
--GROUP BY
  --  group_list
--HAVING--
    --conditions;--

SELECT
    customer_id,
    YEAR (order_date),
    COUNT (order_id) order_count
FROM
    sales.orders
GROUP BY
    customer_id,
    YEAR (order_date)
HAVING
    COUNT (order_id) >= 2
ORDER BY
    customer_id;

SELECT
    category_id,
    MAX (list_price) max_list_price,
    MIN (list_price) min_list_price
FROM
    production.products
GROUP BY
    category_id
HAVING
    MAX (list_price) > 4000 OR MIN (list_price) < 500;