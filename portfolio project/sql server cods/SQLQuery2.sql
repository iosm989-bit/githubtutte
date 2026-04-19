select 
Employee,
sum(f.Quantity) as total_sales,
sum(f.profit) as profit 
from DimEmployee$ E
join FactSale$ F
on E.[Employee Key] = F.[Salesperson Key]
group by Employee
order by profit desc;

