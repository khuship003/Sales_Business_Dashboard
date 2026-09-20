SELECT Region, ROUND(SUM(Sales),2) AS revenue, ROUND(SUM(Profit),2) AS profit
FROM orders
GROUP BY Region
ORDER BY revenue DESC;

SELECT "Customer Name", ROUND(SUM(Sales),2) AS total_spent
FROM orders
GROUP BY "Customer Name"
ORDER BY total_spent DESC
LIMIT 10;

WITH monthly AS (
  SELECT strftime('%Y-%m', "Order Date") AS month, SUM(Sales) AS revenue
  FROM orders
  GROUP BY month
)
SELECT month, ROUND(revenue,2) AS revenue,
  ROUND(100.0 * (revenue - LAG(revenue) OVER (ORDER BY month)) / LAG(revenue) OVER (ORDER BY month), 2) AS mom_growth_pct
FROM monthly
ORDER BY month;

WITH monthly AS (
  SELECT
    substr("Order Date", 7, 4) || '-' || substr("Order Date", 4, 2) AS month,
    SUM(Sales) AS revenue
  FROM orders
  GROUP BY month
)
SELECT month, ROUND(revenue,2) AS revenue,
  ROUND(100.0 * (revenue - LAG(revenue) OVER (ORDER BY month)) / LAG(revenue) OVER (ORDER BY month), 2) AS mom_growth_pct
FROM monthly
ORDER BY month;