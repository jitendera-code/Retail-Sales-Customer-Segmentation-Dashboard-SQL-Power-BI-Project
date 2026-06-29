# 📊 Retail Sales Performance & Customer Retention Analytics

![Power BI](https://img.shields.io/badge/Power%20BI-Dashboard-F2C811?logo=powerbi&logoColor=black)
![SQL Server](https://img.shields.io/badge/SQL%20Server-Analysis-CC2927?logo=microsoftsqlserver&logoColor=white)
![Excel](https://img.shields.io/badge/Excel-Data%20Preparation-217346?logo=microsoftexcel&logoColor=white)

---

# Project Overview

This project analyzes transactional sales data from a UK-based online retail company to uncover business insights related to revenue performance, customer purchasing behavior, product performance, and customer retention.

Using **SQL Server** for data preparation and business analysis and **Power BI** for interactive visualization, the project transforms raw transactional data into an executive dashboard that supports data-driven decision-making for Sales and Marketing teams.

Rather than focusing only on technical implementation, this project answers practical business questions that help stakeholders understand business performance, identify revenue opportunities, and improve customer retention.

---

# Background & Business Context

The company operates an online retail business specializing in gifts, home décor, stationery, and seasonal products. Every year, thousands of customer transactions are recorded across a wide range of products.

Although a large amount of transactional data is available, Sales and Marketing teams lack a centralized reporting solution to monitor business performance efficiently. As a result, answering important questions—such as which products generate the most revenue, when customers are most active, or which customers are likely to stop purchasing—requires significant manual effort.

To support better business decisions, management requested an analytical solution that transforms raw transaction records into meaningful business insights through interactive dashboards and customer segmentation.

This project demonstrates how data analytics can help stakeholders monitor commercial performance, understand customer behavior, and identify opportunities to improve long-term business growth.

---

# Business Problem

Management wants to answer several key business questions:

### Revenue Performance

- How is the business performing overall?
- How has revenue changed throughout the year?
- What is the Average Order Value (AOV)?

### Product Performance

- Which products generate the highest revenue?
- Which products contribute most to total sales?

### Customer Purchasing Behaviour

- During which hours are customers most likely to place orders?
- How does purchasing activity change throughout the day?

### Customer Retention

- Which customer segments generate the greatest business value?
- Which customers are becoming inactive?
- Which customer groups should Marketing prioritize for retention campaigns?

---

# Project Goals

The primary objectives of this analysis are to:

- Build an executive sales dashboard for business stakeholders.
- Monitor revenue, customer activity, and purchasing trends.
- Identify high-performing products.
- Analyze customer purchasing behavior throughout the day.
- Segment customers using RFM (Recency, Frequency, Monetary) analysis.
- Identify customers at risk of churn.
- Provide actionable business recommendations supported by data.

---

# Dataset Overview

The analysis uses the **Online Retail** transactional dataset containing customer purchases made by a UK-based online retailer.

### Dataset Summary

| Attribute | Details |
|-----------|---------|
| Dataset | Online Retail |
| Time Period | December 2010 – December 2011 |
| Total Records | ~541,909 transaction rows |
| Customers | ~4,000 |
| Orders | ~22,000 |
| Revenue | ~$10 Million |
| Primary Market | United Kingdom |
| Data Granularity | One row represents one product purchased within an invoice |

Each invoice may contain multiple products, meaning several rows can belong to the same customer order.

---

# Data Model Overview

The dataset consists of transactional records containing customer information, invoice details, purchased products, quantities, pricing, and timestamps.

### Primary Fields

| Column | Description |
|---------|-------------|
| InvoiceNo | Unique invoice identifier |
| StockCode | Product identifier |
| Description | Product name |
| Quantity | Quantity purchased |
| InvoiceDate | Date and time of purchase |
| UnitPrice | Selling price per unit |
| CustomerID | Unique customer identifier |
| Country | Customer location |

To support reporting and customer analytics, the transactional data was cleaned and transformed before loading into Power BI.

Additional calculated fields and measures were created to support:

- Revenue Analysis
- Time Intelligence
- Product Performance
- RFM Customer Segmentation
- Executive KPI Reporting

---

# Data Preparation

Before analysis, the raw transactional dataset required several preprocessing steps to improve data quality and analytical accuracy.

The cleaning process included:

- Removing cancelled invoices
- Removing transactions with missing Customer IDs
- Removing invalid quantities and prices
- Creating Total Revenue calculations
- Standardizing date fields
- Preparing analytical SQL views
- Generating RFM metrics for customer segmentation

These transformations ensured that all dashboard metrics accurately reflected completed customer purchases.

---

# Executive Summary

The business generated approximately **$10 million in revenue** from over **22,000 completed orders** across nearly **4,000 customers**, resulting in an **Average Order Value of $473**.

Revenue accelerated significantly during the final quarter of the year, indicating strong seasonal demand driven by holiday purchasing behavior. Product sales were concentrated among a relatively small number of high-performing SKUs, highlighting the importance of inventory planning for key products.

Customer segmentation using the RFM framework revealed that a substantial proportion of customers fall into **At Risk**, **Needs Attention**, and **Lost Customer** segments. While the business has a valuable group of loyal customers, improving customer retention presents one of the largest opportunities for sustainable revenue growth.

Overall, the analysis provides management with a centralized view of sales performance, customer behavior, and retention opportunities to support data-driven commercial decisions.

---

# Dashboard Overview

The executive dashboard was designed to provide stakeholders with an at-a-glance summary of business performance.

The dashboard includes:

- Executive KPIs
- Monthly Revenue Trend
- Top Revenue Generating Products
- Customer Purchase Behaviour by Hour
- RFM Customer Segmentation
- Customer Retention Overview

> **Dashboard Preview**

![Dashboard](https://github.com/jitendera-code/Retail-Sales-Customer-Segmentation-Dashboard-SQL-Power-BI-Project/blob/main/visuals.png)

*Figure 1. Executive dashboard summarizing revenue performance, customer purchasing behavior, product performance, and customer segmentation.*
