# 📊 Retail Sales Performance & Customer Retention Analytics

### Business Intelligence Analysis using SQL & Power BI


# Background & Business Overview

A UK-based online retail company specializing in gifts, decorative items, stationery, and household products wants to better understand its sales performance and customer purchasing behavior.

Although the business records thousands of customer transactions each year, the Sales and Marketing teams have limited visibility into revenue trends, product performance, and customer retention. Without a centralized reporting solution, identifying business opportunities and customer risks becomes difficult.

This analysis was conducted to transform raw transactional data into actionable business insights that support data-driven decision making across Sales and Marketing.

---

# Business Objectives

The analysis aims to answer the following business questions:

### Revenue Performance

* How is the business performing overall?
* How does revenue change throughout the year?
* What is the average order value?

### Product Performance

* Which products generate the highest revenue?
* Which products contribute most to business growth?

### Customer Behaviour

* When are customers most likely to place orders?
* How does purchasing activity change throughout the day?

### Customer Retention

* Which customers generate the highest value?
* Which customers are becoming inactive?
* Which customer groups should Marketing prioritize?

---

# Data Structure Overview
Data Structure Overview

Since your model is simple, include:

Online Retail Dataset

InvoiceNo
     │
CustomerID
     │
Description
     │
Quantity
     │
UnitPrice
     │
InvoiceDate

# Executive Summary

The business generated approximately **$10M in revenue** from **22K orders** across **4K customers**, with an **Average Order Value of $473**.

Revenue increased significantly during the final quarter of the year, indicating strong seasonal demand. A relatively small group of products contributed a substantial share of total revenue, while RFM analysis identified a large number of customers classified as **At Risk**, **Needs Attention**, and **Lost Customers**, highlighting customer retention as an important business opportunity.

---

# Dashboard Preview

*(Insert Dashboard Screenshot Here)*

![Dashboard](visuals/dashboard.png)

---

# Insights Deep Dive

## Insight 1 — Overall Business Performance

### Business Question

How is the business performing overall?

### Findings

* Revenue exceeded **$10M**
* More than **22K orders**
* Approximately **4K customers**
* Average Order Value of **$473**

### Business Insight

The company has established a strong customer base with healthy purchasing activity. These KPIs provide a baseline for measuring future business growth.

---

## Insight 2 — Seasonal Revenue Trends

### Business Question

How does revenue change over time?

### Findings

Revenue increased steadily during Q4, with November generating the highest monthly sales.

### Business Insight

The business experiences strong seasonal demand during the holiday shopping period. Planning inventory and marketing activities before Q4 could maximize revenue opportunities.

---

## Insight 3 — Product Performance

### Business Question

Which products contribute most to revenue?

### Findings

A relatively small number of products contribute a significant proportion of overall revenue.

### Business Insight

Business performance depends heavily on several high-performing products. Maintaining inventory availability for these products is essential for protecting revenue.

---

## Insight 4 — Customer Purchasing Behaviour

### Business Question

When are customers most active?

### Findings

Customer purchasing activity peaks between **11 AM and 2 PM**.

### Business Insight

Midday represents the highest customer engagement period and offers an ideal opportunity for promotional campaigns and marketing activities.

---

## Insight 5 — Customer Segmentation

### Business Question

Which customer groups require business attention?

### Findings

RFM segmentation identified a large proportion of customers in the following groups:

* At Risk
* Needs Attention
* Lost Customers

A smaller but valuable segment consists of Champions and Loyal Customers.

### Business Insight

Improving customer retention could have a significant impact on long-term revenue growth by increasing repeat purchases and customer lifetime value.

---

# Business Recommendations

| Business Opportunity | Recommendation                                                        | Expected Business Value                     |
| -------------------- | --------------------------------------------------------------------- | ------------------------------------------- |
| Customer Retention   | Launch personalized win-back campaigns for At Risk and Lost Customers | Increase repeat purchases and reduce churn  |
| Customer Loyalty     | Reward Champions and Loyal Customers with exclusive offers            | Increase customer lifetime value            |
| Product Performance  | Prioritize inventory for top-performing products                      | Reduce stockouts and protect revenue        |
| Marketing Timing     | Schedule promotional campaigns between 11 AM and 2 PM                 | Improve campaign engagement and conversions |
| Seasonal Planning    | Increase inventory and marketing investment before Q4                 | Maximize revenue during peak demand         |

---

# Technical Implementation

### Data Preparation

The transactional dataset was cleaned and prepared using SQL Server.

The preparation process included:

* Removing cancelled transactions
* Removing missing Customer IDs
* Creating Total Revenue calculations
* Preparing analytical SQL views
* Creating RFM metrics for customer segmentation

---

### Analytical Techniques

* Revenue Analysis
* Customer Segmentation (RFM)
* Time Series Analysis
* Product Performance Analysis
* Customer Behaviour Analysis

---

### Technology Stack

* SQL Server
* Power BI
* Microsoft Excel

---

# Caveats & Assumptions

* Cancelled invoices were excluded from the analysis.
* Transactions without Customer IDs were removed for customer-level reporting.
* The dataset primarily represents UK retail transactions.
* RFM segmentation is based on historical purchasing behaviour and does not include external business factors such as promotions or competitor activity.

---

# Repository Structure

```text
Retail-Sales-Performance-Customer-Retention-Analytics

│
├── README.md
│
├── data
│   └── OnlineRetail.csv
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
│   ├── StarSchema.png
│
└── docs
    └── Business_Recommendations.pdf
```

---

# About This Project

This project demonstrates how SQL and Power BI can be used to transform raw transactional data into business insights that support sales performance monitoring, customer segmentation, and strategic decision making for Sales and Marketing teams.


