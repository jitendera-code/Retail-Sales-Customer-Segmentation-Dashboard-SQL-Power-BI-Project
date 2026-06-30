# Retail Customer Segmentation (RFM Analysis) | SQL | Power BI | Customer Retention Analytics

> 

![Power BI](https://img.shields.io/badge/Power%20BI-Dashboard-F2C811?logo=powerbi&logoColor=black)
![SQL Server](https://img.shields.io/badge/SQL%20Server-Analysis-CC2927?logo=microsoftsqlserver&logoColor=white)
![Excel](https://img.shields.io/badge/Excel-Data%20Preparation-217346?logo=microsoftexcel&logoColor=white)

--- End-to-end Data Analytics project that analyzes retail transactions to identify customer segments, improve customer retention, and support business decision-making using SQL Server and Power BI.

# Executive Summary

A UK online retailer generated approximately **$10M in revenue** from **22K completed orders** across **4K customers** with an **Average Order Value of $473**.

The objective of this project was to transform raw transactional data into actionable business insights that help stakeholders understand:

- Revenue performance
- Customer purchasing behavior
- Product performance
- Customer retention opportunities

Using SQL Server for data preparation and Power BI for dashboard development, I performed **RFM (Recency, Frequency, Monetary) Analysis** to segment customers into behavioral groups and identify opportunities to improve customer retention.

---

# Business Problem

The business collects thousands of customer transactions every year but lacks a centralized reporting solution for monitoring business performance.

Without analytics, stakeholders cannot easily answer questions such as:

- Which customers generate the highest value?
- Which customers are at risk of churn?
- Which products drive the most revenue?
- When are customers most likely to purchase?
- How does revenue change throughout the year?

The goal of this project is to answer these questions through an interactive executive dashboard.

---

# Methodology

This project follows a complete end-to-end analytics workflow.

```
Raw Data

↓

SQL Data Cleaning

↓

Exploratory Data Analysis

↓

Feature Engineering

↓

RFM Score Calculation

↓

Customer Segmentation

↓

Power BI Dashboard

↓

Business Insights

↓

Business Recommendations
```

---

# Skills Demonstrated

### SQL Server

- Data Cleaning
- Joins
- CTEs
- Window Functions
- Aggregate Functions
- CASE Statements
- Date Functions
- GROUP BY
- HAVING

### Power BI

- Star Schema Data Modeling
- DAX Measures
- Time Intelligence
- KPI Cards
- Interactive Slicers
- Drill Through
- Data Visualization

### Business Analytics

- Customer Segmentation (RFM)
- Revenue Analysis
- Customer Retention Analysis
- Product Performance Analysis
- Business Storytelling

---

# Dashboard

### Executive Dashboard

The dashboard provides business stakeholders with a centralized view of:

- Revenue Performance
- Customer Segmentation
- Product Performance
- Monthly Revenue Trends
- Customer Purchasing Behavior
- Executive KPIs

![Dashboard](visuals.png)

---

# Results

## Revenue Performance

The business generated approximately:

- **$10M Total Revenue**
- **22K Orders**
- **4K Customers**
- **$473 Average Order Value**

Revenue increased significantly during the fourth quarter, indicating strong seasonal demand.

---

## Product Performance

A relatively small number of products generated a significant share of total revenue.

This suggests inventory planning should prioritize high-performing products to minimize stockouts during peak demand.

---

## Customer Purchasing Behavior

Customer purchasing activity peaks between **11 AM and 2 PM**.

This creates an opportunity to optimize:

- Email campaigns
- Promotions
- Customer support scheduling

---

## Customer Segmentation (RFM)

Customers were segmented into:

- Champions
- Loyal Customers
- Potential Loyalists
- Needs Attention
- At Risk
- Lost Customers

The analysis revealed that a large proportion of customers belong to **At Risk**, **Needs Attention**, and **Lost Customer** segments, highlighting customer retention as the largest business opportunity.

---

# Business Recommendations

Based on the analysis, I recommend:

### Customer Retention

- Launch personalized win-back campaigns for At Risk customers.
- Offer targeted promotions to inactive customers.
- Monitor customer behavior monthly.

### Loyalty Programs

- Reward Champions and Loyal Customers.
- Introduce referral and loyalty incentives.

### Inventory Planning

- Increase stock availability for top-selling products.
- Forecast demand before seasonal peaks.

### Marketing

- Schedule campaigns before peak purchasing hours.
- Increase promotional activity before Q4.

---

# Next Steps

If this project were deployed in a production environment, I would extend it by:

- Automating the SQL ETL pipeline
- Connecting Power BI to a live SQL Server database
- Building Customer Lifetime Value (CLV) analysis
- Performing Cohort Analysis
- Developing Customer Churn Prediction models
- Implementing Sales Forecasting
- Creating Marketing Performance Dashboards

---

# Repository Structure

```
Retail-Customer-Segmentation
│
├── README.md
│
├── data/
│   ├── raw/
│   └── processed/
│
├── sql/
│   ├── 01_Data_Cleaning.sql
│   ├── 02_Exploratory_Analysis.sql
│   ├── 03_RFM_Analysis.sql
│   └── 04_Business_Queries.sql
│
├── powerbi/
│   └── RetailDashboard.pbix
│
├── dashboard/
│   ├── Dashboard.png
│   └── Data_Model.png
│
└── docs/
    ├── Business_Requirements.pdf
    └── Data_Dictionary.pdf
```

---

# Tools Used

| Tool | Purpose |
|------|---------|
| SQL Server | Data Cleaning & Analysis |
| Power BI | Dashboard Development |
| DAX | KPI Calculations |
| Power Query | Data Transformation |
| Excel | Initial Data Exploration |

---

# About This Project

This project demonstrates how SQL and Power BI can be used together to transform raw retail transaction data into business insights that support executive decision-making.

Rather than focusing only on dashboard development, the project emphasizes solving business problems through customer segmentation, revenue analysis, and actionable recommendations.
