--WHY: To analyze data group-wise instead of whole table
-- Put similar things together, then calculate something for each group
--GROUP BY = categorize first, calculate second

--Orders per category
SELECT c3 AS category, COUNT(*) AS total_orders FROM Data GROUP BY c3;

--Sales per category
SELECT c3 AS category, SUM(CAST(c8 AS REAL)) AS total_sales
FROM Data 
GROUP BY c3;

--Orders + sales per category
SELECT c3 AS category,
COUNT(*) AS total_orders,
SUM(CAST(c8 AS REAL)) AS total_sales
FROM Data 
GROUP BY c3;

--If column appears in SELECT AND it is NOT inside SUM/ COUNT/ AVG > it MUST be in GROUP BY

--Sales by region
SELECT c7 AS region,
SUM(CAST(c8 AS REAL)) AS total_sales
FROM Data
GROUP BY c7;

--Sales by region (GROUP BY + ORDER BY)
-- Best performing region appears first
SELECT c7 AS region, 
SUM(CAST(c8 AS REAL)) AS total_sales
FROM Data
GROUP BY c7
ORDER BY total_sales desc;

--MEMORY
--GROUP BY = split rows >>> aggregate each split


