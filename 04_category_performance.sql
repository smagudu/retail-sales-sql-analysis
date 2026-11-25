SELECT
    Category,

    SUM(Quantity * UnitPrice * (1 - Discount))
        AS TotalRevenue,

    SUM(Quantity * UnitCost)
        AS TotalCost,

    SUM(Quantity * UnitPrice * (1 - Discount))
        - SUM(Quantity * UnitCost)
        AS TotalProfit,

    SUM(Quantity) AS UnitsSold,

    COUNT(DISTINCT OrderID) AS TotalOrders

FROM dbo.SalesData_Clean

GROUP BY Category

ORDER BY TotalProfit DESC;