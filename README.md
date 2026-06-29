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

# 📈 Business Insights Deep Dive

The following analysis answers the key business questions identified by management. Each insight combines quantitative findings with business interpretation and actionable recommendations to support data-driven decision-making.

---

# Insight 1 — Executive Business Performance

## Business Question

**How is the business performing overall?**

### Observation

The business generated approximately **$10 million in revenue** from over **22,000 completed orders** across nearly **4,000 customers**, resulting in an **Average Order Value (AOV) of approximately $473**.

These key performance indicators suggest a healthy customer base with strong purchasing activity throughout the analysis period.

### Supporting Metrics

| KPI | Value |
|------|-------:|
| Total Revenue | ~$10 Million |
| Orders | ~22,000 |
| Customers | ~4,000 |
| Average Order Value | ~$473 |

### Business Impact

The company has established a solid commercial foundation supported by a broad customer base and consistent purchasing activity. These KPIs provide a benchmark for measuring future business growth and evaluating strategic initiatives.

### Recommendation

- Continue monitoring executive KPIs through an interactive dashboard.
- Track revenue, customer growth, and order trends regularly to support strategic planning.

---

# Insight 2 — Revenue Trend & Seasonality

## Business Question

**How does revenue change throughout the year?**

### Observation

Revenue remained relatively stable during most of the year before increasing significantly during the fourth quarter. **November generated the highest monthly revenue**, highlighting strong seasonal demand.

### Supporting Evidence

The Monthly Revenue Trend indicates:

- Revenue accelerates during Q4.
- November records the highest monthly sales.
- Revenue declines after the holiday shopping period.

### Business Impact

The business experiences predictable seasonal demand during the holiday season. Understanding this trend enables management to better plan inventory, staffing, and promotional campaigns before peak demand occurs.

### Recommendation

- Increase inventory before Q4.
- Launch holiday marketing campaigns several weeks before peak demand.
- Forecast seasonal demand using historical sales trends.

---

# Insight 3 — Product Performance

## Business Question

**Which products contribute the most to revenue?**

### Observation

A relatively small number of products contribute a significant proportion of total revenue.

While the business offers hundreds of products, only a limited number consistently generate the majority of sales.

### Supporting Evidence

The Product Performance analysis identifies several best-selling products that contribute disproportionately to total revenue.

### Business Impact

Business performance depends heavily on a small group of high-performing products. Inventory shortages or supply disruptions affecting these products could significantly impact overall revenue.

### Recommendation

- Prioritize inventory availability for top-selling products.
- Monitor stock levels proactively to reduce stockouts.
- Bundle lower-performing products with best sellers to improve overall product sales.

---

# Insight 4 — Customer Purchasing Behaviour

## Business Question

**When are customers most likely to place orders?**

### Observation

Customer purchasing activity peaks between **11:00 AM and 2:00 PM**, after which transaction volume gradually declines.

### Supporting Evidence

Hourly transaction analysis shows consistent purchasing activity during late morning and early afternoon.

### Business Impact

Understanding purchasing behaviour helps Marketing teams schedule campaigns when customers are most active, increasing engagement without additional advertising costs.

### Recommendation

- Schedule promotional campaigns before peak purchasing hours.
- Send email marketing campaigns between **10 AM and 12 PM**.
- Align customer support resources with periods of high customer activity.

---

# Insight 5 — Customer Segmentation (RFM Analysis)

## Business Question

**Which customer groups require immediate business attention?**

### Observation

RFM analysis classified customers into multiple behavioural segments.

Although the business has a valuable group of **Champions** and **Loyal Customers**, a substantial proportion of customers belong to **At Risk**, **Needs Attention**, and **Lost Customer** segments.

### Supporting Evidence

Customers were segmented using three behavioural metrics:

- **Recency** – How recently a customer made a purchase
- **Frequency** – How often a customer purchases
- **Monetary Value** – How much a customer spends

The analysis indicates that many customers have become inactive despite having previous purchasing history.

### Business Impact

Retaining existing customers is generally more cost-effective than acquiring new ones. Customers identified as **At Risk** or **Needs Attention** represent a valuable opportunity to increase repeat purchases and improve Customer Lifetime Value (CLV).

### Recommendation

- Launch personalized win-back campaigns for At Risk customers.
- Offer targeted discounts to customers showing declining purchase frequency.
- Reward Champions and Loyal Customers with exclusive loyalty benefits.
- Monitor customer segments regularly to identify behavioural changes early.

---

# 📌 Key Business Takeaways

The analysis identified several important business opportunities:

- The business generated approximately **$10 million** in revenue from over **22,000 orders**.
- Revenue follows a strong seasonal pattern, with demand peaking during the fourth quarter.
- A relatively small number of products contribute a significant share of overall revenue.
- Customer purchasing activity is highest between **11 AM and 2 PM**, providing an opportunity to optimize campaign timing.
- Customer retention represents the largest long-term business opportunity, with many customers classified as **At Risk**, **Needs Attention**, or **Lost Customers**.

Overall, the analysis provides management with actionable insights to improve revenue performance, strengthen customer retention, optimize inventory planning, and support data-driven decision-making.

---

# 💡 Business Recommendations

| Business Opportunity | Recommendation | Expected Business Value |
|----------------------|----------------|-------------------------|
| Customer Retention | Launch personalized win-back campaigns for At Risk and Lost Customers | Increase repeat purchases and reduce customer churn |
| Customer Loyalty | Reward Champions and Loyal Customers through exclusive offers and loyalty programs | Improve Customer Lifetime Value (CLV) |
| Product Performance | Prioritize inventory planning for top-selling products | Reduce stockouts and protect revenue |
| Seasonal Planning | Increase inventory and marketing investment before Q4 | Maximize revenue during peak shopping periods |
| Marketing Optimization | Schedule campaigns between **11 AM and 2 PM** | Improve customer engagement and campaign conversion |
| Executive Reporting | Continuously monitor KPIs using interactive dashboards | Enable faster, data-driven business decisions |

# 🛠️ Technical Implementation

This project follows a complete end-to-end data analytics workflow, beginning with raw transactional data and ending with an executive dashboard designed for business stakeholders.

The workflow consists of data cleaning, transformation, business analysis, customer segmentation, KPI development, and dashboard visualization.

---

# SQL Data Preparation

The raw transactional dataset contained cancelled invoices, missing customer identifiers, and records that required cleaning before meaningful analysis could be performed.

The data preparation process included:

* Removing cancelled transactions (Invoice numbers beginning with **"C"**)
* Excluding records with missing **CustomerID**
* Removing invalid quantities and unit prices
* Creating **Total Revenue** calculations
* Standardizing date and time fields
* Preparing analytical SQL views
* Generating RFM metrics for customer segmentation

These steps ensured that all business metrics accurately represented completed customer purchases.

---

# Business Analysis Using SQL

SQL was used to answer key business questions by transforming transactional data into meaningful business metrics.

### Revenue Analysis

* Total Revenue
* Monthly Revenue Trend
* Average Order Value (AOV)
* Order Volume

### Product Performance Analysis

* Top Revenue Generating Products
* Product Revenue Contribution
* Best-Selling Products

### Customer Behaviour Analysis

* Customer Purchase Frequency
* Hourly Purchasing Activity
* Customer Order Distribution

### Customer Segmentation

RFM (Recency, Frequency, Monetary) analysis was performed to classify customers into behavioural segments, including:

* Champions
* Loyal Customers
* Potential Loyalists
* New Customers
* Promising
* Needs Attention
* At Risk
* Lost Customers

This segmentation enables targeted retention and marketing strategies.

---

# Power BI Dashboard

The cleaned dataset was imported into Power BI to develop an interactive executive dashboard that provides stakeholders with a centralized view of business performance.

### Dashboard Features

* Executive KPI Cards
* Monthly Revenue Trend
* Top Revenue Generating Products
* Customer Purchasing Behaviour by Hour
* Customer Segmentation (RFM)
* Interactive Filters and Slicers

The dashboard enables users to explore business performance across multiple dimensions while supporting faster, data-driven decision-making.

---

# Data Modeling

A relational data model was developed within Power BI to improve report performance and simplify analysis.

The model includes:

* Fact Table for transactional sales
* Dimension tables for Date and Customer analytics
* One-to-Many relationships
* Star Schema design principles
* Optimized data model for DAX calculations

This approach improves scalability, readability, and analytical performance.

---

# DAX Measures

Several DAX measures were created to calculate business KPIs and support executive reporting.

Examples include:

* Total Revenue
* Total Orders
* Total Customers
* Average Order Value
* Revenue Growth
* Revenue (Previous Year)
* Revenue Growth %
* RFM Score Calculations

These measures provide dynamic calculations that automatically respond to dashboard filters and slicers.

---

# Tools & Technologies

| Tool            | Purpose                                           |
| --------------- | ------------------------------------------------- |
| SQL Server      | Data Cleaning, Transformation & Business Analysis |
| Power BI        | Dashboard Development & Data Visualization        |
| DAX             | KPI Calculations & Time Intelligence              |
| Power Query     | Data Transformation                               |
| Microsoft Excel | Initial Data Exploration                          |

---

# Repository Structure

```text
Retail-Sales-Performance-Customer-Retention-Analytics
│
├── README.md
│
├── data
│   └── OnlineRetail.xlsx
│
├── sql
│   ├── Data_Cleaning.sql
│   ├── Business_Analysis.sql
│   ├── Customer_RFM.sql
│
├── dashboard
│   └── RetailDashboard.pbix
│
├── visuals
│   ├── Dashboard.png
│   ├── DataModel.png
│
└── docs
    └── Business_Recommendations.pdf
```

---

# Skills Demonstrated

This project demonstrates the following technical and business analytics skills:

### Data Analytics

* Business Performance Analysis
* Customer Behaviour Analysis
* Product Performance Analysis
* Customer Segmentation (RFM)
* KPI Development

### SQL

* Data Cleaning
* Data Transformation
* Aggregate Functions
* Common Table Expressions (CTEs)
* Window Functions
* Business Query Writing

### Power BI

* Dashboard Design
* Interactive Visualizations
* Data Modeling
* Star Schema
* Power Query
* DAX Measures

### Business Skills

* Data Storytelling
* Business Insight Generation
* Executive Reporting
* Strategic Recommendations
* KPI Interpretation

---

# Caveats & Assumptions

The following assumptions were made during the analysis:

* Cancelled invoices were excluded from the analysis.
* Transactions without Customer IDs were removed from customer-level reporting.
* The dataset primarily represents UK retail transactions.
* Revenue calculations are based on completed purchases only.
* RFM segmentation reflects historical purchasing behaviour and does not account for external influences such as promotions, competitor activity, or macroeconomic conditions.
* Customer Lifetime Value (CLV) was inferred using purchasing behaviour rather than predictive modelling.

Understanding these limitations is important when interpreting the results and applying recommendations.

---

# Future Improvements

Several opportunities exist to extend this project further:

* Customer Lifetime Value (CLV) Prediction
* Sales Forecasting using Machine Learning
* Customer Churn Prediction
* Cohort Retention Analysis
* Market Basket Analysis
* Profitability Analysis by Product Category
* Geographic Sales Analysis
* Interactive Drill-through Dashboard Pages
* Automated Data Refresh using SQL Server

These enhancements would provide deeper business insights and improve the analytical capabilities of the solution.

---

# Key Takeaways

This project demonstrates how transactional retail data can be transformed into actionable business insights through SQL and Power BI.

The analysis moves beyond descriptive reporting by identifying revenue trends, customer purchasing patterns, high-performing products, and customer retention opportunities. Using RFM segmentation and executive KPI reporting, the project provides stakeholders with practical recommendations to support marketing, inventory planning, and long-term business growth.

Rather than focusing solely on dashboard development, this project emphasizes business problem-solving and demonstrates how data analytics can support strategic decision-making.

---

# About This Project

This project was developed as part of my Data Analytics portfolio to demonstrate practical business analysis using SQL Server and Power BI.

The objective was not only to build an interactive dashboard but also to communicate meaningful business insights that help stakeholders make informed decisions. The project follows a complete analytics workflow—from data cleaning and transformation to visualization, storytelling, and business recommendations—mirroring the responsibilities of a Data Analyst in a real-world business environment.





