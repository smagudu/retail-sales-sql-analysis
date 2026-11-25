SELECT
    Region,

    SUM(Quantity * UnitPrice * (1 - Discount))
        AS TotalRevenue,

    SUM(Quantity * UnitCost)
        AS TotalCost,

    SUM(Quantity * UnitPrice * (1 - Discount))
        - SUM(Quantity * UnitCost)
        AS TotalProfit,

    COUNT(DISTINCT OrderID)
        AS TotalOrders

FROM dbo.SalesData_Clean

GROUP BY Region

ORDER BY TotalProfit DESC;