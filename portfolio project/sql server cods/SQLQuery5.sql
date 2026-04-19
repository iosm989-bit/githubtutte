select 
Employee,
c.[State Province],
sum(f.quantity) as total_sales,
sum(f.profit) as total_profit 
from DimEmployee$ E
join FactSale$ F
on E.[Employee Key] = F.[Salesperson Key]
join DimCity$ c
on f.[City Key] = c.[City Key]
group by 
Employee,
c.[State Province]
order by Employee desc 