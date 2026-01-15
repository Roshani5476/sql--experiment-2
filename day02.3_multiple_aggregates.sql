--WHY: To calculate multiple metrics for each group 

--Category-wise multiple calculation
SELECT 
c3 AS total_orders, 
COUNT(*) AS total_orders,
SUM(CAST(c8 AS REAL)) AS total_sales,
AVG(CAST(c8 AS REAL)) AS avg_sales
FROM Data
GROUP BY c3;

--Region-wise performance
SELECT 
c7 AS region, 
COUNT(*) AS total_orders,
SUM(CAST(c8 AS REAL)) AS total_sales,
AVG(CAST(c8 AS REAL)) AS avg_sales
FROM Data
GROUP BY c7;

--MEMORY: 
--Same GROUP BY
--Multiple calculations
--One row per group
