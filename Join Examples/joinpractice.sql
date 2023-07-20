-- question
--request from your boss asking you to identify return by reason during order each month...
--1 ---desired output --
---orders.order_date, returns.reason_return, count() orders.order_id 
---must have a group by
--tables??? orders returns
--keys order_id  r.order_id --> o.order_id *

select date_part('month', orders.order_date) as month, returns.reason_returned, count(orders.order_id)
from orders join returns
	on orders.order_id = returns.order_id
group by orders.order_date, returns.reason_returned
order by order_month, returns.reason_returned
limit 100;


-- columns? order.order_id, orders.sales, returns.return_reason -- time? -- ship mode
-- tables? orders and returns
--keys? order_id
--join strat. inner -- I only care about orders that have returns

select o.order_id, o.sales, r.reason_returned
from orders as o
	join returns as r
	on o.order_id = r.order_id
limit 100;

---expand form for a bbi viz later
--- salespersons by quantity and sales figures

---  desired output to satisfy questions columns? sales, quantity, and sales person
---- regions.salesperson,  order.quantity, orders.sales.
--- from order regions
-- regions and orders 
--- joining key region_id -- Using() -- DT N

select rg.salesperson, o.quantity, o.sales
from orders o join regions rg
	on o.region_id = rg.region_id
limit 100;

--- columns needed are order_id, customer_name
---orders table is primary
-- key is customer_id

select o.customer_id,cs.customer_name 
from orders o join customers cs
	on o.customer_id = cs.customer_id
limit 100;














