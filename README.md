# 📊 Sales Trend Analysis | Task 6   

## � Objective  
Analyzed monthly revenue and order volume trends from the `online_sales` dataset using SQL aggregations.

## 🛠️ Tools Used  
- Database: MySQL  
- Key Features:`EXTRACT()`, `GROUP BY`, aggregate functions  

## 📂 Files   
| [sales_analysis.sql]| Complete SQL queries |  
| [monthly_sales_results.csv] | Exported results |  

## 🔍 SQL Solution  
sql
Main analysis query
SELECT 
    EXTRACT(YEAR FROM order_date) AS year,
    EXTRACT(MONTH FROM order_date) AS month,
    SUM(amount) AS revenue,
    COUNT(DISTINCT order_id) AS orders
FROM online_sales
GROUP BY year, month
ORDER BY year, month;
## 📊 Results  
| Year | Month | Revenue | Orders |  
|------|-------|---------|--------|  
| 2023 | 1     | 301.25  | 2      |  
| 2023 | 2     | 450.25  | 2      |  
| 2023 | 3     | 425.50  | 2      |  

Key Insights:
February had peak sales ($450.25)
Consistent order volume (2 orders/month)
March revenue was 94.5% of February's

💡 Learnings
Grouping by time: EXTRACT() + GROUP BY
Aggregate functions: SUM() for revenue, COUNT(DISTINCT) for unique orders
Sorting: ORDER BY for chronological/revenue-based views
