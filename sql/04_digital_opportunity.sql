-- 4. Digital opportunity

SELECT
    Name,
    Address,
    Area,
    Avg_Rating,
    Total_Reviews,
    Has_Website,
    Has_Menu,
    Has_Delivery,
    Digital_Readiness_Score,
    ROUND(Opportunity_Score, 3) AS opportunity_score
FROM restaurants_cleaned
WHERE Market_Scope = 'Main Market'
AND   Total_Reviews >= 100
AND   Avg_Rating >= 4.2
AND   (Has_Website = 0 OR Has_Menu = 0)
ORDER BY Opportunity_Score DESC
LIMIT 30