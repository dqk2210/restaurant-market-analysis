-- 1. KPI overview

SELECT
    COUNT(*) AS total_restaurants,
    SUM(Total_Reviews) AS total_reviews,
    ROUND(AVG(Avg_Rating), 2) AS avg_rating,
    ROUND(AVG(Has_Website) * 100, 2) AS website_coverage_pct,
    ROUND(AVG(Has_Menu) * 100, 2) AS menu_coverage_pct,
    ROUND(AVG(Has_Delivery) * 100, 2) AS delivery_coverage_pct
FROM restaurants_cleaned
WHERE Market_Scope = 'Main Market'















