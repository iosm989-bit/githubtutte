SELECT
Day,
SUM(Total_Spent) AS total_profit,
CAST(
ROUND(
CAST(SUM(Total_Spent) AS FLOAT) 
/ SUM(SUM(Total_Spent)) OVER () * 100, 2
) AS VARCHAR(10)) + '%' AS per_of_total
FROM clean_cafe_sales
GROUP BY Day
ORDER BY total_profit DESC;