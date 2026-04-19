select 
s.[Stock Item],
sum(quantity) as total_sales,
sum(profit) as total_profit
from FactSale$ f
join DimStockItem$ s
on s.[Stock Item Key] = f.[Stock Item Key]
group by s.[Stock Item],quantity
order by total_profit desc