# Pizza-Sales-Report-- Power-BI-SQL
This project focuses on analyzing pizza sales data using SQL for data extraction and KPI calculations, and Power BI for interactive dashboard visualization.
# 🍕 Pizza Sales Analysis Dashboard | Power BI & SQL

## 📌 Project Overview
This project focuses on analyzing pizza sales data using **SQL** and **Power BI** to uncover meaningful business insights and improve decision-making.  
The dashboard provides a complete overview of sales performance, customer ordering behavior, product trends, and operational KPIs.

Using interactive visualizations and SQL-based calculations, this project helps businesses monitor revenue, identify top-selling pizzas, and analyze customer purchasing patterns.

---

# 📷 <img width="1261" height="691" alt="image" src="https://github.com/user-attachments/assets/48d819f9-7ab9-4698-b220-a73a14edb717" />


## Problem Statement & KPI Requirement
---

# 🎯 Business Problem
The company wants to analyze pizza sales data to understand overall business performance and customer behavior.

The objective is to calculate and visualize important KPIs such as:

- Total Revenue
- Average Order Value
- Total Pizzas Sold
- Total Orders
- Average Pizzas Per Order

These insights help management improve product strategy, sales performance, and operational planning.

---

# 🛠 Tools & Technologies Used

| Tool | Purpose |
|------|----------|
| SQL | Data Cleaning & KPI Calculation |
| Power BI | Dashboard Development & Visualization |
| Excel / CSV | Raw Dataset |
| DAX | Measures & Calculated Fields |

---

# 📊 Key KPIs

## 1️⃣ Total Revenue
Total sales generated from all pizza orders.

```sql
SELECT SUM(total_price) AS Total_Revenue
FROM pizza_sales;
```

---

## 2️⃣ Average Order Value
Average amount spent per order.

```sql
SELECT 
    SUM(total_price) / COUNT(DISTINCT order_id) AS Avg_Order_Value
FROM pizza_sales;
```

---

## 3️⃣ Total Pizzas Sold
Total quantity of pizzas sold.

```sql
SELECT SUM(quantity) AS Total_Pizzas_Sold
FROM pizza_sales;
```

---

## 4️⃣ Total Orders
Total number of orders placed.

```sql
SELECT COUNT(DISTINCT order_id) AS Total_Orders
FROM pizza_sales;
```

---

## 5️⃣ Average Pizzas Per Order
Average number of pizzas sold per order.

```sql
SELECT 
    CAST(SUM(quantity) AS DECIMAL(10,2)) /
    COUNT(DISTINCT order_id) AS Avg_Pizzas_Per_Order
FROM pizza_sales;
```

---

# 📈 Dashboard Features

## 🔹 Sales Analysis
- Total Revenue Tracking
- Daily & Monthly Sales Trend
- Peak Order Hours Analysis

## 🔹 Product Performance
- Best Selling Pizzas
- Worst Selling Pizzas
- Pizza Category Analysis
- Pizza Size Analysis

## 🔹 Customer Insights
- Average Order Value
- Average Quantity per Order
- Ordering Behavior Analysis

## 🔹 Interactive Dashboard
- Dynamic Filters & Slicers
- Drill-down Analysis
- Interactive Charts & KPIs

---

# 📌 Insights Generated

- Identified top-performing pizza categories.
- Found peak business hours and busiest days.
- Analyzed customer ordering patterns.
- Compared pizza sizes and sales contribution.
- Improved visibility into overall sales performance.

---

# 🚀 Project Workflow

1. Data Collection
2. Data Cleaning using SQL
3. KPI Calculation
4. Data Modeling in Power BI
5. Dashboard Creation
6. Business Insight Generation

---

# 📂 Files Included

| File Name | Description |
|------------|-------------|
| `Pizza_sales_report.pbix` | Power BI Dashboard File |
| `Pizza_Sales_Query.sql` | SQL Queries for KPI Calculations |
| `README.md` | Project Documentation |

---

# 💡 Business Impact

This dashboard helps businesses:

✔ Monitor sales performance  
✔ Improve inventory planning  
✔ Identify high-demand products  
✔ Optimize marketing strategies  
✔ Enhance business decision-making  

---

# 👨‍💻 Author

## Abhishek Kumar
**Data Analyst | Power BI Developer | SQL Enthusiast**

---

# ⭐ If you like this project

Give this repository a ⭐ on GitHub and share your feedback!

---

# 📌 Tags

`Power BI` `SQL` `Data Analytics` `Business Intelligence` `Dashboard` `Pizza Sales Analysis` `Data Visualization`
