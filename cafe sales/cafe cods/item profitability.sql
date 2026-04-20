select 
Item,
SUM(Quantity) AS total_quantity,
SUM(total_spent) AS total_profit,
CAST(
ROUND(
CAST(SUM(Total_Spent) AS FLOAT) 
/ SUM(SUM(Total_Spent)) OVER () * 100, 2
) AS VARCHAR(10)) + '%' AS per_of_total
from clean_cafe_sales
group by Item 
order by total_profit desc