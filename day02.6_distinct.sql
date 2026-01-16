--WHY: Distinct removes duplicate values and shows unique items

-- Unique cities
SELECT DISTINCT c5 AS city FROM Data;

-- Count unique cities
SELECT COUNT(DISTINCT c5) AS total_cities FROM Data;

--Unique categories
SELECT DISTINCT c3 AS category FROM Data;

-- Unique category-region combination
SELECT DISTINCT c3, c7 FROM Data;

--MEMORY: DISTINCT = " no duplicates"
