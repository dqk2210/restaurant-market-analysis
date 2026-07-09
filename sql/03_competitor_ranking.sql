-- 3. Competitor ranking

SELECT  
    Name,
    Address,
    Area,
    Avg_Rating,
    Total_Reviews,
    ROUND(Bayesian_Score, 3) as bayesian_score,
    ROUND(Bad_Review_Rate * 100, 2) AS bad_review_rate,
    Price_Tier,
    Has_Delivery,
    Has_Website,
    Has_Menu
FROM restaurants_cleaned
WHERE Market_Scope = 'Main Market'
AND  Total_Reviews >= 100
ORDER BY bayesian_score DESC
LIMIT 20