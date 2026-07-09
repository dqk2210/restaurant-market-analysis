-- 2. Area analysis

SELECT 
    Area, 
    COUNT(*) AS total_restaurants,
    ROUND(AVG(Avg_Rating), 2) AS avg_rating,
    SUM(Total_Reviews) AS total_reviews
FROM restaurants_cleaned
WHERE Market_Scope = 'Main Market'
GROUP BY Area
ORDER BY total_restaurants DESC


-- 2.1. Price tier analysis

SELECT
    COALESCE(Price_Tier, 'Unknown') AS price_tier,
    COUNT(*) AS total_restaurants,
    SUM(Total_Reviews) AS total_reviews,
    ROUND(AVG(Avg_Rating), 2) AS avg_rating,
    ROUND(AVG(Bayesian_Score), 3) AS avg_bayesian_score
FROM restaurants_cleaned
WHERE Market_Scope = 'Main Market'
GROUP BY COALESCE(Price_Tier, 'Unknown')
ORDER BY total_restaurants DESC;