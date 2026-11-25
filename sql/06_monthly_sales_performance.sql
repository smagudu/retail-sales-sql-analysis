SELECT
    DATENAME(MONTH, OrderDate) AS SalesMonth,
    MONTH(OrderDate) AS MonthNumber,

    SUM(Quantity * UnitPrice * (1 - Discount))
        AS TotalRevenue,

    SUM(Quantity * UnitPrice * (1 - Discount))
        - SUM(Quantity * UnitCost)
        AS TotalProfit,

    COUNT(DISTINCT OrderID) AS TotalOrders

FROM dbo.SalesData_Clean

GROUP BY
    MONTH(OrderDate),
    DATENAME(MONTH, OrderDate)

ORDER BY MonthNumber;