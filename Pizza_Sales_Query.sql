

Select * from pizza_sales

Select Sum(total_price) as Total_revenue from pizza_sales;

Select	SUM(total_Price) / COUNT(Distinct order_id) as Avg_Order_Value from pizza_sales

Select SUM(quantity) as Total_Pizza_Sold  from pizza_sales

select count(distinct order_id) as total_orders from pizza_sales

select CAST(CAST(SUM(quantity) as decimal(10,2)) / CAST(COUNT(Distinct order_id) as decimal(10,2)) as decimal(10,2)) as Avg_Pizzas_Per_order from pizza_sales

select DATENAME(DW, Order_date) as order_day, COUNT(Distinct order_id) as Total_orders
from pizza_sales
Group by DATENAME(DW, Order_date)

select DATENAME(month,order_date) as order_month, COUNT(Distinct Order_id) as Total_orders
from pizza_sales
group by DATENAME(Month,order_date)
order by Total_orders Desc

Select pizza_category, Cast (SUM(Total_price)*100 / (Select SUM(Total_price) from pizza_sales where MONTH(order_date) = 1) as decimal(10,2)) as PCT
from pizza_sales 
Where Month (Order_date) =1
Group by pizza_category
Order by PCT DESC


Select pizza_size, CAST (SUM(Total_price) as Decimal(10,2)) as Total_sales,  Cast(SUM(Total_price)*100 / 
(Select SUM(Total_price) from pizza_sales Where DATEPART(quarter,order_date)=1) as decimal(10,2)) as PCT
from pizza_sales 
Where DATEPART(quarter,order_date)=1
Group by pizza_size
order by PCT DESC

Select * from pizza_sales

---Top 5 Pizza by revenue
Select Top 5 pizza_name, Cast(SUM(Total_price) as decimal(10,2)) as Total_revenue
from pizza_sales
Group By Pizza_name
Order By Total_revenue Desc

------Bottom 5 Pizza by revenue
Select Top 5 pizza_name, Cast(SUM(Total_price) as decimal(10,2)) as Total_revenue
from pizza_sales
Group By Pizza_name
Order By Total_revenue ASC

---Top 5 Pizzas by Quantity
Select Top 5 pizza_name, SUM(quantity) as Total_quantity
from pizza_sales
Group By Pizza_name
Order By Total_quantity Desc

---Top 5 Pizzas by Total Orders
select top 5 pizza_name, count(distinct order_id) as total_orders
from pizza_sales
group by pizza_name
order by total_orders desc
