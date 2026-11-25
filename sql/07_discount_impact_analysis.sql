SELECT
    Discount * 100 AS DiscountPercentage,

    COUNT(DISTINCT OrderID) AS TotalOrders,

    SUM(Quantity) AS UnitsSold,

    SUM(Quantity * UnitPrice)
        AS RevenueBeforeDiscount,

    SUM(Quantity * UnitPrice * Discount)
        AS TotalDiscountGiven,

    SUM(Quantity * UnitPrice * (1 - Discount))
        AS ActualRevenue,

    SUM(Quantity * UnitCost)
        AS TotalCost,

    SUM(Quantity * UnitPrice * (1 - Discount))
        - SUM(Quantity * UnitCost)
        AS TotalProfit,

    ROUND(
        100.0 *
        (
            SUM(Quantity * UnitPrice * (1 - Discount))
            - SUM(Quantity * UnitCost)
        )
        / NULLIF(
            SUM(Quantity * UnitPrice * (1 - Discount)), 0
        ),
        2
    ) AS ProfitMargin

FROM dbo.SalesData_Clean

GROUP BY Discount

ORDER BY DiscountPercentage;