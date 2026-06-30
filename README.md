# Retail Customer Segmentation (RFM Analysis) | SQL | Power BI

> An end-to-end data analytics project that uses SQL Server and Power BI to analyze customer purchasing behavior, identify high-value customers, and uncover customer retention opportunities through RFM (Recency, Frequency, Monetary) Analysis.

![Power BI](https://img.shields.io/badge/Power%20BI-Dashboard-F2C811?logo=powerbi&logoColor=black)
![SQL Server](https://img.shields.io/badge/SQL%20Server-Analysis-CC2927?logo=microsoftsqlserver&logoColor=white)
![Excel](https://img.shields.io/badge/Excel-Data%20Preparation-217346?logo=microsoftexcel&logoColor=white)

---
# 📖 Project Background

A UK-based online retail company specializing in gifts, home décor, stationery, and seasonal products processes thousands of customer transactions every year. While the company collects a large volume of transactional data, Sales and Marketing teams lack a centralized reporting solution to monitor business performance, understand customer purchasing behavior, and identify opportunities to improve customer retention.

This project analyzes historical retail transaction data to transform raw sales records into actionable business insights. By leveraging SQL Server for data preparation and Power BI for interactive visualization, the analysis provides decision-makers with a centralized dashboard to monitor revenue performance, product sales, customer behavior, and customer retention trends.

Insights and recommendations are provided across the following key business areas:

Revenue Performance: Evaluate overall business performance using key metrics such as Total Revenue, Total Orders, Total Customers, and Average Order Value (AOV) while identifying seasonal revenue trends throughout the year.
Product Performance: Identify the products generating the highest revenue and evaluate their contribution to overall business performance to support inventory planning and merchandising decisions.
Customer Purchasing Behavior: Analyze hourly purchasing patterns to understand when customers are most active and identify opportunities to optimize marketing campaigns and operational planning.
Customer Segmentation (RFM Analysis): Classify customers into behavioral segments using Recency, Frequency, and Monetary (RFM) analysis to identify high-value customers, customers requiring engagement, and customers at risk of becoming inactive.
Customer Retention Strategy: Evaluate customer loyalty patterns and identify opportunities to improve repeat purchases through targeted retention initiatives and personalized marketing strategies.

The objective of this project is to provide business stakeholders with a centralized executive dashboard that supports data-driven decision-making, improves customer retention, optimizes inventory planning, and enables sustainable revenue growth.



# 🟨 Executive Summary

A UK-based online retailer wanted a better understanding of **sales performance, customer purchasing behavior, and customer retention**. Existing transaction data was difficult to analyze and provided limited visibility into which customers generated the most value or which customers were at risk of churn.

To solve this problem, I cleaned and transformed retail transaction data using **SQL Server**, developed an interactive **Power BI dashboard**, and performed **RFM (Recency, Frequency, Monetary) Analysis** to segment customers based on purchasing behavior.

The analysis revealed four key business opportunities:

- Revenue peaks significantly during **Q4**, indicating strong seasonal demand.
- A small number of products contribute a large share of total revenue.
- Customer purchasing activity is highest between **11 AM and 2 PM**.
- A large proportion of customers belong to **At Risk**, **Needs Attention**, and **Lost Customer** segments, making customer retention the biggest opportunity for business growth.

**Next Step:** Launch targeted customer retention campaigns, improve inventory planning before Q4, and automate reporting for continuous business monitoring.

---

# 🟨 Business Problem

The business processes thousands of retail transactions each year but lacks a centralized analytics solution to monitor sales performance and customer behavior.

Business stakeholders wanted answers to the following questions:

- Which products generate the highest revenue?
- How does revenue change throughout the year?
- When are customers most likely to purchase?
- Which customers are most valuable?
- Which customers are at risk of churn?
- How can marketing improve customer retention?

---

# 🟨 Methodology

1. Cleaned and transformed raw retail transaction data using **SQL Server**.
2. Built an interactive **Power BI dashboard** to monitor KPIs, revenue trends, product performance, and customer behavior.
3. Performed **RFM Analysis** to segment customers and identify retention opportunities.
4. Translated analytical findings into actionable business recommendations for marketing and management teams.

---

# 🟨 Skills

### SQL Server

- Data Cleaning
- CTEs
- Joins
- CASE Statements
- Aggregate Functions
- Window Functions
- GROUP BY
- HAVING

### Power BI

- Data Modeling (Star Schema)
- DAX Measures
- Power Query
- KPI Cards
- Interactive Dashboard
- Data Visualization

### Business Analytics

- RFM Analysis
- Customer Segmentation
- Revenue Analysis
- Business Storytelling
- Business Recommendations

---

# 🟨 Dashboard

![Dashboard](visuals.png)

---

# 🟨 Results & Business Recommendations

## 📈 Revenue Trend

### Business Question

How has revenue changed throughout the year?

### Observation

Revenue remained relatively stable during the first three quarters before increasing sharply in Q4. November generated the highest monthly revenue, followed by December.

### Business Impact

The business experiences predictable seasonal demand during the holiday period. Proper inventory planning and early promotional campaigns could significantly improve revenue during peak months.

### Recommendation

- Increase inventory before Q4.
- Launch holiday campaigns earlier.
- Improve seasonal sales forecasting.

---

## 📦 Product Performance

### Business Question

Which products contribute the most revenue?

### Observation

The Top 10 products contribute a significant proportion of overall revenue, with **DOTCOM POSTAGE** generating the highest sales.

### Business Impact

Revenue depends heavily on a relatively small number of products. Stock shortages for these products could negatively affect overall business performance.

### Recommendation

- Prioritize inventory for top-selling products.
- Monitor stock availability.
- Bundle slower-moving products with best sellers.

---

## 🛒 Customer Purchasing Behavior

### Business Question

When are customers most likely to place orders?

### Observation

Order activity increases rapidly during the morning and reaches its highest level between **11 AM and 2 PM** before gradually declining.

### Business Impact

Marketing campaigns launched before peak purchasing hours are more likely to reach customers when they are actively shopping.

### Recommendation

- Schedule promotional emails between **10 AM and 12 PM**.
- Align customer support resources with peak order periods.

---

## 👥 Customer Segmentation (RFM Analysis)

### Business Question

Which customer groups should the business prioritize?

### Observation

RFM Analysis identified six customer segments. A large proportion of customers belong to **At Risk**, **Needs Attention**, and **Lost Customer** segments, while the **Champions** segment is comparatively smaller.

### Business Impact

The business has a significant opportunity to increase revenue by improving customer retention rather than relying solely on acquiring new customers.

### Recommendation

- Launch personalized win-back campaigns for At Risk customers.
- Reward Champions with exclusive loyalty benefits.
- Create targeted promotions for Potential Loyalists.
- Monitor customer segments regularly to identify behavioral changes early.

---

# 🟨 Next Steps

If this project were implemented in a production environment, I would extend it by:

- Building Customer Lifetime Value (CLV) analysis.
- Performing Cohort Analysis.
- Developing Customer Churn Prediction models.
- Automating SQL data refresh and Power BI reporting.
