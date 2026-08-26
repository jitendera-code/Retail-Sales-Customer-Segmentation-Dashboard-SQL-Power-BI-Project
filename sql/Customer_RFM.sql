/*
===============================================================================
PROJECT: Online Retail - RFM Customer Segmentation
DATABASE: SQL Server

BUSINESS QUESTION
-----------------
How can we identify and group customers based on:
1. How recently they purchased?
2. How frequently they purchase?
3. How much they spend?

RFM = Recency + Frequency + Monetary

TUTORIAL-ALIGNED WORKFLOW
--------------------------
Raw Transactions -> Customer RFM Metrics -> RFM CTE -> NTILE(5) Scores
-> Combined RFM Score -> Good / Average / Bad Segments -> Marketing Actions

Method used:
- Exclude customers without CustomerID.
- Recency reference date = MAX(InvoiceDate) in the dataset.
- Frequency = COUNT(DISTINCT InvoiceNo), not transaction rows.
- Monetary = SUM(Quantity * UnitPrice).
- NTILE(5) creates 1-5 scores.
- Recency uses DESC so recent customers receive higher scores.
- Frequency and Monetary use ASC so higher values receive higher scores.
===============================================================================
*/


/*
===============================================================================
1. CLEAN TRANSACTION DATA
Business Question:
Which transactions should be included in customer analysis?
===============================================================================
*/

CREATE OR ALTER VIEW dbo.vw_CleanedRetail AS
SELECT
    InvoiceNo,
    StockCode,
    Description,
    TRY_CAST(Quantity AS FLOAT) AS Quantity,
    TRY_CONVERT(DATETIME, InvoiceDate, 105) AS InvoiceDate,
    TRY_CAST(UnitPrice AS FLOAT) AS UnitPrice,
    CustomerID,
    Country,
    TRY_CAST(Quantity AS FLOAT) * TRY_CAST(UnitPrice AS FLOAT) AS TotalPrice
FROM dbo.online_retail
WHERE CustomerID IS NOT NULL
  AND InvoiceNo NOT LIKE 'C%'
  AND ISNUMERIC(Quantity) = 1
  AND ISNUMERIC(UnitPrice) = 1;


/*
===============================================================================
2. CUSTOMER-LEVEL RFM METRICS
Business Question:
What are the Recency, Frequency and Monetary values for each customer?

Recency  = days since most recent purchase.
Frequency = number of distinct invoices/orders.
Monetary = total customer spending.

The dataset MAX(InvoiceDate) is used as the reference date so the analysis
is reproducible instead of changing with the day the query is executed.
===============================================================================
*/

CREATE OR ALTER VIEW dbo.vw_RFM AS
SELECT
    CustomerID,

    DATEDIFF(
        DAY,
        MAX(InvoiceDate),
        (SELECT MAX(InvoiceDate) FROM dbo.vw_CleanedRetail)
    ) AS Recency,

    COUNT(DISTINCT InvoiceNo) AS Frequency,

    ROUND(SUM(TotalPrice), 2) AS Monetary

FROM dbo.vw_CleanedRetail
GROUP BY CustomerID;


/*
===============================================================================
3. RFM SCORES USING NTILE(5)
Business Question:
How can customers be ranked from 1 to 5 for each RFM dimension?

Recency:
Lower days = better. ORDER BY Recency DESC gives recent customers higher
NTILE scores.

Frequency:
Higher number of orders = better. ORDER BY Frequency ASC gives the highest
frequency group score 5.

Monetary:
Higher spending = better. ORDER BY Monetary ASC gives the highest monetary
group score 5.
===============================================================================
*/

WITH RFM_Ranked AS
(
    SELECT
        CustomerID,
        Recency,
        Frequency,
        Monetary,

        NTILE(5) OVER (ORDER BY Recency DESC) AS R_Score,
        NTILE(5) OVER (ORDER BY Frequency ASC) AS F_Score,
        NTILE(5) OVER (ORDER BY Monetary ASC) AS M_Score

    FROM dbo.vw_RFM
),


/*
===============================================================================
4. COMBINE THE RFM SCORES
Business Question:
What is the customer's combined RFM profile?

Examples:
555 = strongest possible profile
432 = R=4, F=3, M=2
111 = weakest possible profile
===============================================================================
*/

RFM_Scored AS
(
    SELECT
        CustomerID,
        Recency,
        Frequency,
        Monetary,
        R_Score,
        F_Score,
        M_Score,
        CONCAT(R_Score, F_Score, M_Score) AS RFM_Score
    FROM RFM_Ranked
),


/*
===============================================================================
5. CUSTOMER SEGMENTATION
Business Question:
Which customers are Good, Average or Bad based on RFM behaviour?

Good Customers:
    R >= 4 AND F >= 4 AND M >= 4

Average Customers:
    R >= 3 AND F >= 3 AND M >= 3

Bad Customers:
    All remaining RFM combinations.

The segment names intentionally follow the tutorial summary.
===============================================================================
*/

RFM_Segmented AS
(
    SELECT
        CustomerID,
        Recency,
        Frequency,
        Monetary,
        R_Score,
        F_Score,
        M_Score,
        RFM_Score,

        CASE
            WHEN R_Score >= 4
             AND F_Score >= 4
             AND M_Score >= 4
                THEN 'Good Customers'

            WHEN R_Score >= 3
             AND F_Score >= 3
             AND M_Score >= 3
                THEN 'Average Customers'

            ELSE 'Bad Customers'
        END AS Customer_Segment

    FROM RFM_Scored
)


/*
===============================================================================
6. FINAL CUSTOMER-LEVEL RFM OUTPUT
Business Question:
What customer-level RFM result can be shared with marketing or Power BI?
===============================================================================
*/

SELECT
    CustomerID,
    Recency,
    Frequency,
    ROUND(Monetary, 2) AS Monetary,
    R_Score,
    F_Score,
    M_Score,
    RFM_Score,
    Customer_Segment
FROM RFM_Segmented
ORDER BY
    R_Score DESC,
    F_Score DESC,
    M_Score DESC;


/*
===============================================================================
7. RFM SEGMENT SUMMARY
Business Question:
How many customers are in each segment and how much revenue does each
segment contribute?
===============================================================================
*/

WITH RFM_Ranked AS
(
    SELECT
        CustomerID,
        Recency,
        Frequency,
        Monetary,
        NTILE(5) OVER (ORDER BY Recency DESC) AS R_Score,
        NTILE(5) OVER (ORDER BY Frequency ASC) AS F_Score,
        NTILE(5) OVER (ORDER BY Monetary ASC) AS M_Score
    FROM dbo.vw_RFM
),
RFM_Segmented AS
(
    SELECT
        *,
        CONCAT(R_Score, F_Score, M_Score) AS RFM_Score,
        CASE
            WHEN R_Score >= 4 AND F_Score >= 4 AND M_Score >= 4
                THEN 'Good Customers'
            WHEN R_Score >= 3 AND F_Score >= 3 AND M_Score >= 3
                THEN 'Average Customers'
            ELSE 'Bad Customers'
        END AS Customer_Segment
    FROM RFM_Ranked
)
SELECT
    Customer_Segment,
    COUNT(*) AS Customer_Count,
    ROUND(SUM(Monetary), 2) AS Segment_Revenue,
    ROUND(AVG(Monetary), 2) AS Average_Customer_Revenue,
    ROUND(AVG(R_Score), 2) AS Average_R_Score,
    ROUND(AVG(F_Score), 2) AS Average_F_Score,
    ROUND(AVG(M_Score), 2) AS Average_M_Score
FROM RFM_Segmented
GROUP BY Customer_Segment
ORDER BY Segment_Revenue DESC;


/*
===============================================================================
8. BEST CUSTOMERS
Business Question:
Who has the strongest possible RFM profile?

RFM 555 = most recent + highest frequency + highest monetary group.
===============================================================================
*/

WITH RFM_Ranked AS
(
    SELECT
        CustomerID,
        Recency,
        Frequency,
        Monetary,
        NTILE(5) OVER (ORDER BY Recency DESC) AS R_Score,
        NTILE(5) OVER (ORDER BY Frequency ASC) AS F_Score,
        NTILE(5) OVER (ORDER BY Monetary ASC) AS M_Score
    FROM dbo.vw_RFM
)
SELECT
    CustomerID,
    Recency,
    Frequency,
    ROUND(Monetary, 2) AS Monetary,
    R_Score,
    F_Score,
    M_Score,
    CONCAT(R_Score, F_Score, M_Score) AS RFM_Score
FROM RFM_Ranked
WHERE R_Score = 5
  AND F_Score = 5
  AND M_Score = 5
ORDER BY Monetary DESC;


/*
===============================================================================
9. BAD CUSTOMER / RE-ENGAGEMENT OPPORTUNITY
Business Question:
Which customers have weaker RFM behaviour and may require re-engagement?

Business action:
Prioritize higher-spending customers within this group for win-back offers,
personalized campaigns and product recommendations.
===============================================================================
*/

WITH RFM_Ranked AS
(
    SELECT
        CustomerID,
        Recency,
        Frequency,
        Monetary,
        NTILE(5) OVER (ORDER BY Recency DESC) AS R_Score,
        NTILE(5) OVER (ORDER BY Frequency ASC) AS F_Score,
        NTILE(5) OVER (ORDER BY Monetary ASC) AS M_Score
    FROM dbo.vw_RFM
),
RFM_Segmented AS
(
    SELECT
        *,
        CASE
            WHEN R_Score >= 4 AND F_Score >= 4 AND M_Score >= 4
                THEN 'Good Customers'
            WHEN R_Score >= 3 AND F_Score >= 3 AND M_Score >= 3
                THEN 'Average Customers'
            ELSE 'Bad Customers'
        END AS Customer_Segment
    FROM RFM_Ranked
)
SELECT
    CustomerID,
    Recency,
    Frequency,
    ROUND(Monetary, 2) AS Monetary,
    R_Score,
    F_Score,
    M_Score,
    CONCAT(R_Score, F_Score, M_Score) AS RFM_Score
FROM RFM_Segmented
WHERE Customer_Segment = 'Bad Customers'
ORDER BY Monetary DESC;


/*
===============================================================================
POWER BI OUTPUTS
----------------
Use the final RFM result to build:
1. Customer Distribution by RFM Segment
2. Revenue Contribution by RFM Segment
3. RFM Score distribution
4. Top 555 Customers
5. Bad Customer Revenue Opportunity

BUSINESS STORY
--------------
RFM converts transaction-level data into customer-level behaviour. The
resulting scores allow marketing teams to retain Good Customers, nurture
Average Customers and re-engage Bad Customers.
===============================================================================
*/
