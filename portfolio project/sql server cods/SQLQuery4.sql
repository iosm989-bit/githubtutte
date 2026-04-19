select 
c.City,
Description,
Quantity,
sum(Profit) as total_profit
from FactSale$ F
join DimCity$ C
on f.[City Key] = c.[City Key]
group by 
c.City,
Quantity,
Description
order by total_profit desc;