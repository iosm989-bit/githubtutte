
select 
Payment_Method,
sum(Quantity) as total_quentity,
CAST(
ROUND(
CAST(SUM(Total_Spent) AS FLOAT) 
/ SUM(SUM(Total_Spent)) OVER () * 100, 2
) AS VARCHAR(10)) + '%' AS per_of_total
from clean_cafe_sales
group by  
Payment_Method
order by total_quentity desc