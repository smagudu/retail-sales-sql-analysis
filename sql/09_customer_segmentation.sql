
WITH CustomerSummary AS (
    SELECT
        CustomerID,
        COUNT(DISTINCT OrderID) AS TotalOrders,
        SUM(Quantity * UnitPrice * (1 - Discount)) AS TotalRevenue,
        SUM(Quantity * UnitCost) AS TotalCost,
        SUM(Quantity * UnitPrice * (1 - Discount))
            - SUM(Quantity * UnitCost) AS TotalProfit
    FROM dbo.SalesData_Clean
    GROUP BY CustomerID
),
CustomerSegments AS (
    SELECT
        CustomerID,
        TotalOrders,
        TotalRevenue,
        TotalProfit,
        CASE
            WHEN TotalOrders = 1 THEN 'One-time'
            WHEN TotalOrders BETWEEN 2 AND 3 THEN 'Occasional'
            ELSE 'Frequent'
        END AS CustomerSegment
    FROM CustomerSummary
)
SELECT
    CustomerSegment,
    COUNT(*) AS TotalCustomers,
    SUM(TotalOrders) AS TotalOrders,
    SUM(TotalRevenue) AS TotalRevenue,
    SUM(TotalProfit) AS TotalProfit,
    ROUND(AVG(TotalRevenue), 2) AS AverageRevenuePerCustomer,
    ROUND(AVG(TotalProfit), 2) AS AverageProfitPerCustomer
FROM CustomerSegments
GROUP BY CustomerSegment
ORDER BY TotalProfit DESC;
