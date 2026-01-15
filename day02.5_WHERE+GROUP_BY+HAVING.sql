--WHY: To filter data first, then group it, then filter groups

--Example: South region categories with high sales

SELECT c3 AS category,
SUM(CAST(c8 AS REAL)) AS total_sales
FROM Data 
WHERE c7 = 'South'
GROUP BY c3
HAVING SUM(CAST(c8 AS REAL)) > 30000;

--MEMORY:
--WHERE = row filter
--GROUP BY = make groups
--HAVING = group filter
