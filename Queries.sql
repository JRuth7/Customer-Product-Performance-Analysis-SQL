-- ============================================
-- Customer & Product Performance Analysis
-- Dataset: Superstore
-- Database: MySQL
-- ============================================


-- 1. Revenue by Category

SELECT Category,
       SUM(Sales) AS Total_Sales
FROM orders
GROUP BY Category
ORDER BY Total_Sales DESC;


-- 2. Profit by Category

SELECT Category,
       SUM(Profit) AS Total_Profit
FROM orders
GROUP BY Category
ORDER BY Total_Profit DESC;


-- 3. Sales by Region

SELECT Region,
       SUM(Sales) AS Total_Sales
FROM orders
GROUP BY Region
ORDER BY Total_Sales DESC;


-- 4. Category Wise Returns

SELECT o.Category,
       COUNT(*) AS Returned_Orders
FROM orders o
JOIN returns r
ON o.`Order ID` = r.`Order ID`
GROUP BY o.Category
ORDER BY Returned_Orders DESC;


-- 5. Product Return Analysis

SELECT o.`Product Name`,
       COUNT(*) AS Returned_Orders
FROM orders o
JOIN returns r
ON o.`Order ID` = r.`Order ID`
GROUP BY o.`Product Name`
ORDER BY Returned_Orders DESC
LIMIT 10;


-- 6. Return Sales Value

SELECT ROUND(SUM(o.Sales), 2) AS Returned_Sales_Value
FROM orders o
JOIN returns r
ON o.`Order ID` = r.`Order ID`;


-- 7. Return-Driven Profitability Risk

SELECT o.`Product Name`,
       ROUND(SUM(o.Profit), 2) AS Total_Profit
FROM orders o
JOIN returns r
ON o.`Order ID` = r.`Order ID`
GROUP BY o.`Product Name`
ORDER BY Total_Profit ASC
LIMIT 10;
