# Retail Sales Business Analysis
### SQL Business Intelligence Portfolio Project

## 1. Executive Summary

This project uses SQL to analyse retail sales data and investigate business performance across regions, product categories, individual products, discounts and customer purchasing behaviour.

Using Microsoft SQL Server, I performed data preparation, validation and business-focused analysis to identify patterns, evaluate profitability and develop actionable business recommendations.

The project demonstrates how SQL can transform raw sales data into meaningful insights that support business decision-making.

## 2. Business Problem

Retail businesses need to understand more than just how much revenue they generate. They also need to identify which products and regions contribute most to profitability, how discounts affect margins, and which customers generate the greatest value.

The purpose of this analysis was to investigate these areas and provide insights that could help improve sales performance and business decisions.

## 3. Project Objectives

- Evaluate overall sales revenue, costs and profitability.
- Compare sales performance across regions.
- Identify the most profitable product categories and products.
- Analyse monthly sales trends.
- Investigate the relationship between discounts and profit margins.
- Understand customer purchasing behaviour and segment customers.
- Validate the quality and consistency of the dataset.
- Develop recommendations based on the findings.

## 4. Dataset Overview

The project uses a synthetic retail sales dataset containing **500 sales records** covering January to December 2025.

The dataset includes:

OrderID - Unique order identifier 
OrderDate - Date of the order 
CustomerID - Customer identifier 
Region - Sales region 
Product - Product name 
Category - Product category 
Quantity - Number of units sold 
UnitPrice - Selling price per unit 
UnitCost - Cost per unit 
Discount - Discount applied

**Currency:** South African Rand (ZAR).

## 5. Tools and Technologies

- Microsoft SQL Server
- SQL Server Management Studio (SSMS)
- SQL
- GitHub

## 6. Data Preparation

The original dataset was imported into SQL Server.

The following preparation steps were performed:

- Imported the raw dataset into SQL Server.
- Created a cleaned table for analysis.
- Converted date, quantity, price, cost and discount fields into appropriate data types.
- Used `TRY_CONVERT()` to handle data type conversion safely.
- Validated the dataset before performing the analysis.

## 7. SQL Analysis and Key Findings

Ten SQL analyses were performed to investigate different aspects of business performance.

### 1. Overall Sales Performance

- Total Revenue: R4,938,645
- Total Cost: R3,408,956
- Total Profit: R1,529,689
- Profit Margin: 30.97%

The business generated approximately R30.97 in profit after product costs for every R100 in revenue.

### 2. Regional Sales Performance

- KwaZulu-Natal generated the highest revenue at approximately R637,468.
- Western Cape generated the highest total profit at approximately R198,926.
- Limpopo recorded the lowest revenue and total profit.

The results show that the region generating the most revenue is not necessarily the region generating the most profit.

### 3. Regional Profitability

- North West recorded the highest profit margin at 33.40%.
- Eastern Cape recorded the lowest margin at 29.44%.
- Western Cape generated the highest total profit.

This highlights the importance of analysing profit margins alongside total profit.

### 4. Category Performance

Electronics was the strongest category, generating approximately R3.71 million in revenue and R1.09 million in profit.

Furniture was the second-largest contributor to revenue, while Accessories and Stationery contributed smaller amounts.

Stationery recorded 297 units sold but only R19,990 in revenue, suggesting an opportunity to investigate its pricing and revenue contribution.

### 5. Product Performance

The leading products by total profit included:

- Laptop: R448,375
- Smartphone: R352,575
- Desk: R214,450
- Monitor: R174,000
- Office Chair: R147,080

Laptops and smartphones were the largest profit contributors in the dataset.

### 6. Monthly Sales Performance

- October recorded the highest monthly revenue at approximately R674,551.
- May recorded the lowest monthly revenue at approximately R211,005.
- October also generated the highest monthly profit.

These findings highlight differences in monthly performance within the dataset.

### 7. Discount Impact Analysis

The analysis compared profitability across different discount levels.

| **Discount | Profit Margin** |
| 0%         | 35.75%          |
| 5%         | 33.41%          |
| 10%        | 28.88%          |
| 15%        | 23.72%          |
| 20%        | 20.30%          |

Higher discount levels were associated with lower profit margins in this dataset.

This suggests that discount strategies should be evaluated carefully to avoid unnecessarily reducing profitability.

### 8. Customer Purchasing Analysis

Customer purchasing activity was analysed using order frequency, units purchased, revenue and profit.

The findings showed that customer value cannot be measured by order frequency alone. Some customers generated substantial revenue and profit despite placing fewer orders.

### 9. Customer Segmentation

Customers were grouped according to purchasing frequency:

- **One-time customers:** 1 order.
- **Occasional customers:** 2–3 orders.
- **Frequent customers:** 4 or more orders.

Key findings:

- Occasional customers generated the highest total profit at approximately R738,736.
- Frequent customers generated the highest average revenue per customer at approximately R46,775.
- One-time customers generated the lowest total profit.

These segments provide a starting point for understanding customer purchasing behaviour.

### 10. Data Quality Validation

Data quality checks were performed on the 500 records.

The validation checks found:

- No missing Order IDs.
- No missing order dates.
- No missing customer IDs.
- No invalid quantities.
- No invalid unit prices.
- No invalid unit costs.
- No invalid discount values.

The checks passed for the specific fields and conditions tested.

## 8. Business Recommendations

Based on the analysis, the following recommendations are proposed:

1. **Review regional performance:** Investigate the factors contributing to the strong profit margin in North West and the lower margin in Eastern Cape.

2. **Prioritise high-performing products:** Maintain appropriate stock levels and monitor demand for laptops and smartphones, which contributed significantly to total profit.

3. **Evaluate discount strategies:** Review high-discount transactions to determine whether the additional sales volume justifies the reduction in profit margin.

4. **Investigate low-revenue categories:** Review the pricing and sales contribution of Stationery to identify potential improvement opportunities.

5. **Strengthen customer retention:** Explore targeted engagement strategies for frequent customers while developing ways to encourage one-time customers to purchase again.

6. **Monitor monthly performance:** Investigate the factors behind stronger and weaker months to support better sales planning.

## 9. Project Limitations

- The dataset is synthetic and does not represent actual retail business transactions.
- The dataset contains 500 records covering one year.
- Profit is calculated as revenue less product costs. Operating expenses and overheads are excluded, so this is not net profit.
- Customer segments are based on order frequency and are not a complete measure of customer loyalty.
- The observed relationship between discounts and profit margins does not establish that discounts alone caused lower margins.
- Data validation covered specific fields and conditions rather than every possible data quality issue.

## 10. Skills Demonstrated

- SQL querying and data analysis
- Data cleaning and type conversion
- Aggregate functions and calculations
- `GROUP BY` and `ORDER BY`
- Joins and subqueries
- Common Table Expressions (CTEs)
- `CASE` statements
- Customer segmentation
- Data validation
- Business insight generation
- Analytical thinking and business recommendations

## 11. Project Files

The repository contains:

- 'sql/' — Ten SQL scripts covering the business analyses.
- 'sales_data.csv' — The dataset used in the project.
- 'README.md' — Project documentation and case study.

## 12. Conclusion

This project demonstrates the use of SQL to investigate retail business performance and translate data into meaningful business insights.

Through ten analytical queries, I explored revenue, profitability, regional performance, product contributions, discount patterns and customer purchasing behaviour.

The project strengthened my practical SQL skills while developing my ability to interpret data, identify business opportunities and communicate findings through actionable recommendations.

**Project Focus:** SQL | Business Intelligence | Business Analysis | Data Analytics
