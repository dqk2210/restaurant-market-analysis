-- 5 Data Quality Check

SELECT
    COUNT(*) AS total_rows,
    SUM(CASE WHEN Average_Price IS NULL THEN 1 ELSE 0 END) AS missing_price,
    SUM(CASE WHEN Website IS NULL THEN 1 ELSE 0 END) AS missing_website,
    SUM(CASE WHEN Menu_Link IS NULL THEN 1 ELSE 0 END) AS missing_menu,
    SUM(CASE WHEN Address IS NULL THEN 1 ELSE 0 END) AS missing_address
FROM restaurants_cleaned;


-- 5.2  Duplicate Check


SELECT
    Name,
    Address,
    COUNT(*) AS duplicate_count
FROM restaurants_cleaned
GROUP BY Name, Address
HAVING COUNT(*) > 1
ORDER BY duplicate_count DESC;


-- 5.3 Review vs Rating consistency

SELECT
    Name,
    Address,
    Total_Reviews,
    Star_Total,
    Review_Count_Diff
FROM restaurants_cleaned
WHERE ABS(Review_Count_Diff) > 5
ORDER BY ABS(Review_Count_Diff) DESC;