/*
    Customer RFM Segmentation Analysis
    Project: Retail Sales Performance & Customer Segmentation Analysis
    Database: SQL Server

    RFM = Recency, Frequency, Monetary

    Purpose:
    - Calculate customer-level RFM metrics
    - Score customers from 1-5 using NTILE()
    - Create a combined RFM score
    - Classify customers into Active, Regular, and At-Risk segments

    Latest modification:
    The RFM calculation is structured using Common Table Expressions (CTEs)
    so each transformation is separated into a clear, reusable step.
*/

WITH Cleaned_Sales AS (
    SELECT
        InvoiceNo,
        CustomerID,
        InvoiceDate,
        Quantity,
        UnitPrice,
        Quantity * UnitPrice AS Revenue
    FROM dbo.OnlineRetail
    WHERE CustomerID IS NOT NULL
      AND Quantity > 0
      AND UnitPrice > 0
      AND InvoiceNo NOT LIKE 'C%'
),

Customer_RFM AS (
    SELECT
        CustomerID,
        DATEDIFF(
            DAY,
            MAX(InvoiceDate),
            (SELECT MAX(InvoiceDate) FROM Cleaned_Sales)
        ) AS Recency,
        COUNT(DISTINCT InvoiceNo) AS Frequency,
        SUM(Revenue) AS Monetary
    FROM Cleaned_Sales
    GROUP BY CustomerID
),

RFM_Scored AS (
    SELECT
        CustomerID,
        Recency,
        Frequency,
        Monetary,

        -- Lower Recency is better, so the most recent customers receive 5.
        NTILE(5) OVER (ORDER BY Recency DESC) AS Recency_Raw,

        -- Higher Frequency and Monetary values are better.
        NTILE(5) OVER (ORDER BY Frequency ASC) AS Frequency_Raw,
        NTILE(5) OVER (ORDER BY Monetary ASC) AS Monetary_Raw
    FROM Customer_RFM
),

RFM_Final AS (
    SELECT
        CustomerID,
        Recency,
        Frequency,
        Monetary,

        -- Reverse Recency so 5 = most recent and 1 = least recent.
        6 - Recency_Raw AS R_Score,
        Frequency_Raw AS F_Score,
        Monetary_Raw AS M_Score,

        (6 - Recency_Raw) + Frequency_Raw + Monetary_Raw AS RFM_Total_Score,
        CONCAT(
            6 - Recency_Raw,
            Frequency_Raw,
            Monetary_Raw
        ) AS RFM_Score
    FROM RFM_Scored
)

SELECT
    CustomerID,
    Recency,
    Frequency,
    ROUND(Monetary, 2) AS Monetary,
    R_Score,
    F_Score,
    M_Score,
    RFM_Total_Score,
    RFM_Score,

    CASE
        WHEN RFM_Total_Score >= 12 THEN 'Active Customers'
        WHEN RFM_Total_Score >= 8 THEN 'Regular Customers'
        ELSE 'At Risk Customers'
    END AS Customer_Segment

FROM RFM_Final
ORDER BY RFM_Total_Score DESC, Monetary DESC;
