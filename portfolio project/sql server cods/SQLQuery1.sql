select
package,
sum(profit) as total_profit
from FactSale$
group by Package;
