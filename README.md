# Sales and Business Analytics Dashboard


Overview

An interactive Power BI dashboard analyzing the Sample Superstore dataset (~10,000 orders), covering regional sales performance, product profitability, and customer spending patterns across 2014–2017.

Key Insights

West region generated the highest revenue at ~725K, while South lagged behind at ~392K
Orders with discounts above [FILL IN: the % where profit turned negative in your scatter plot] frequently turned unprofitable, especially in [FILL IN: the category with the most red/negative-profit dots]
Sean Miller was the highest-spending customer at ~25,043 in total purchases across the period

Tools

Excel (Power Query, PivotTables, conditional formatting), SQLite, Power BI

Dashboard Pages

Overview — regional revenue and profit KPIs, monthly revenue trend
Products — category and sub-category performance, discount vs. profit relationship
Customers — top 10 customers by spend, revenue by segment

How to reproduce

Dataset: Sample Superstore on Kaggle
Clean and load the data, then run the queries in sql/queries.sql
Open powerbi/sales_dashboard.pbix in Power BI Desktop to explore the dashboard