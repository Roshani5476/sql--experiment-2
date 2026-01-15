--WHY: WHERE filters rows
--HAVING filters groups after GROUP BY

--Categories with high total sales

SELECT 
c3 AS category,
SUM(CAST(c8 AS REAL)) AS total_sales
FROM Data
GROUP BY c3
HAVING SUM(CAST(c8 AS REAL)) > 50000;

--Categories with many orders

SELECT 
c3 AS category, 
COUNT(*) AS total_orders
FROM Data
GROUP BY c3 
HAVING COUNT(*) > 100;

--MEMORY:
--WHERE = before grouping 
--HAVING = after grouping

--Which groups should I keep?



