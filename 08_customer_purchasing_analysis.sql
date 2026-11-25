
SELECT
    CustomerID,
    COUNT(DISTINCT OrderID) AS TotalOrders,
    SUM(Quantity) AS TotalUnitsPurchased,
    SUM(Quantity * UnitPrice * (1 - Discount)) AS TotalRevenue,
    SUM(Quantity * UnitCost) AS TotalCost,
    SUM(Quantity * UnitPrice * (1 - Discount))
        - SUM(Quantity * UnitCost) AS TotalProfit
FROM dbo.SalesData_Clean
GROUP BY CustomerID
ORDER BY TotalRevenue DESC;
