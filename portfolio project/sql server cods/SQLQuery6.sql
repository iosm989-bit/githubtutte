select 
[State Province],
sum(Quantity) as total_sales,
sum(f.profit) as total_profit 
from DimCity$ c
join FactSale$ f
on c.[City Key] = f.[City Key]
group by 
[State Province]