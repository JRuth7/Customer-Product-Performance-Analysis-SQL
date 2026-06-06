-- ==========================================
-- Customer & Product Performance Analysis
-- Dataset: Superstore
-- Database: MySQL
-- ==========================================

-- Total Records

SELECT COUNT(*)
FROM orders;


-- Revenue by Category

SELECT Category,
       SUM(Sales) AS Total_Sales
FROM orders
GROUP BY Category
ORDER BY Total_Sales DESC;


-- Regional Sales Performance

SELECT Region,
       SUM(Sales) AS Total_Sales
FROM orders
GROUP BY Region
ORDER BY Total_Sales DESC;


-- Top Performing Products

SELECT `Product Name`,
       SUM(Sales) AS Total_Sales
FROM orders
GROUP BY `Product Name`
ORDER BY Total_Sales DESC
LIMIT 10;


-- High-Value Customer Analysis

SELECT `Customer Name`,
       SUM(Sales) AS Total_Sales
FROM orders
GROUP BY `Customer Name`
ORDER BY Total_Sales DESC
LIMIT 10;


-- Category Profitability Analysis

SELECT Category,
       SUM(Profit) AS Total_Profit
FROM orders
GROUP BY Category
ORDER BY Total_Profit DESC;


-- Most Profitable States

SELECT State,
       ROUND(SUM(Profit),2) AS Total_Profit
FROM orders
GROUP BY State
ORDER BY Total_Profit DESC
LIMIT 10;


-- Loss-Making States

SELECT State,
       ROUND(SUM(Profit),2) AS Total_Profit
FROM orders
GROUP BY State
ORDER BY Total_Profit ASC
LIMIT 10;


-- Product Return Analysis (SQL JOIN)

SELECT o.`Product Name`,
       COUNT(*) AS Returned_Orders
FROM orders o
JOIN returns r
ON o.`Order ID` = r.`Order ID`
GROUP BY o.`Product Name`
ORDER BY Returned_Orders DESC
LIMIT 10;


-- Categories with Highest Returns

SELECT o.Category,
       COUNT(*) AS Returned_Orders
FROM orders o
JOIN returns r
ON o.`Order ID` = r.`Order ID`
GROUP BY o.Category
ORDER BY Returned_Orders DESC;


-- Financial Impact of Returns

SELECT
    ROUND(SUM(o.Sales),2) AS Returned_Sales_Value
FROM orders o
JOIN returns r
ON o.`Order ID` = r.`Order ID`;


-- Categories Most Impacted by Returns

SELECT
    o.Category,
    ROUND(SUM(o.Sales),2) AS Returned_Revenue
FROM orders o
JOIN returns r
ON o.`Order ID` = r.`Order ID`
GROUP BY o.Category
ORDER BY Returned_Revenue DESC;


-- Return-Driven Profitability Risk

SELECT
    o.`Product Name`,
    ROUND(SUM(o.Profit),2) AS Total_Profit
FROM orders o
JOIN returns r
ON o.`Order ID` = r.`Order ID`
GROUP BY o.`Product Name`
ORDER BY Total_Profit ASC
LIMIT 10;