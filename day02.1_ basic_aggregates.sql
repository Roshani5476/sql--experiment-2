WHY: To summarize the entire dataset into single values

--COUNT: number of rows
SELECT COUNT(*) FROM data;

--SUM: total value
SELECT SUN(Sales) FROM data;

--AVG: average value
SELECT AVG(Sales) FROM data;

--MIN/ MAX: range
SELECT MIN(Sales), MAX(Sales) FROM data;

--Combined summary
SELECT 
COUNT(*) AS total_orders,
SUM(Sales) AS total_sales,
AVG(Sales) AS avg_sales,
MIN(Sales) AS min_sales,
MAX(Sales) AS max_sales
FROM data;

--MEMORY
-- COUNT =how many 
-- SUM = total
-- AVG = average
-- MIN = smallest
-- MAX = largest










