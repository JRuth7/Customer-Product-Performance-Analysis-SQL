# Customer & Product Performance Analysis Using SQL
Analyzed 9,694 retail sales transactions using MySQL to evaluate revenue performance, customer behavior, profitability trends, and return-related business impact.

Project Overview
- This project analyzes 9,694 retail sales transactions using MySQL to evaluate customer purchasing behavior, product performance, profitability trends, and         return-related business impact. The objective was to derive actionable business insights from transactional sales data and demonstrate practical SQL skills used   in business analytics.


Dataset
- The analysis was performed using the Superstore retail dataset containing:
(1) Orders data
(2) Returns data

Dataset Size
* Total Records Analyzed: **9,694**
* Tables Used: **Orders, Returns**


Tools & Technologies

* MySQL Workbench
* SQL
* Microsoft Excel

SQL Skills Applied

* SELECT
* GROUP BY
* ORDER BY
* LIMIT
* COUNT()
* SUM()
* ROUND()
* INNER JOIN

# Key Business Analyses & Insights

### Revenue by Category

**Objective:** Calculate total sales across product categories.

**Key Finding:** Technology generated the highest revenue at **$835.9K**, contributing the largest share of category sales.

---

### Regional Sales Performance

**Objective:** Analyze revenue distribution across regions.

**Key Finding:** The **West region** generated the highest sales revenue (**$713.5K**), indicating stronger market performance compared to other regions.

---

### Top Performing Products

**Objective:** Identify products contributing the highest sales revenue.

**Key Finding:** The **Canon imageCLASS 2200 Advanced Copier** generated over **$61.6K** in sales, making it the highest-revenue product in the dataset.

---

### High-Value Customer Analysis

**Objective:** Identify customers contributing the most revenue.

**Key Finding:** **Sean Miller** generated over **$25K** in total sales, highlighting the importance of customer retention strategies.

---

### Category Profitability Analysis

**Objective:** Compare profitability across product categories.

**Key Finding:** Technology generated the highest profit (**$145.4K**), while Furniture generated significantly lower profit despite strong sales performance.

---

### State Profitability Analysis

**Objective:** Identify the most and least profitable states.

**Key Finding:** California generated the highest profit (**$74.7K**), while Texas recorded the largest loss (**-$25.5K**).

---

### Product Return Analysis (SQL JOIN)

**Objective:** Analyze return patterns by combining Orders and Returns datasets using SQL JOIN operations.

**Key Finding:** Office Supplies recorded the highest number of returned orders (**450 returns**), indicating potential opportunities to improve product quality and customer satisfaction.

---

### Financial Impact of Returns

**Objective:** Quantify revenue associated with returned orders.

**Key Finding:** Returned orders accounted for approximately **$177.2K** in sales value, demonstrating the financial impact of product returns.

---

### Return-Driven Profitability Risk

**Objective:** Identify returned products contributing the highest losses.

**Key Finding:** The **GBC DocuBind P400 Electric Binding System** generated approximately **-$3.7K** in profit among returned products, highlighting a potential profitability risk.

---

## Business Impact

This analysis helped identify:

* High-revenue product categories and products
* High-value customers
* Profitable and loss-making regions
* Revenue loss associated with product returns
* Products contributing to profitability risk
