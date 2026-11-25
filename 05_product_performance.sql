SELECT
    Product,
    Category,

    SUM(Quantity) AS UnitsSold,

    SUM(Quantity * UnitPrice * (1 - Discount))
        AS TotalRevenue,

    SUM(Quantity * UnitCost)
        AS TotalCost,

    SUM(Quantity * UnitPrice * (1 - Discount))
        - SUM(Quantity * UnitCost)
        AS TotalProfit

FROM dbo.SalesData_Clean

GROUP BY Product, Category

ORDER BY TotalProfit DESC;