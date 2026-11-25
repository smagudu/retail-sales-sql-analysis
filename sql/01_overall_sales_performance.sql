SELECT
    SUM(Quantity * UnitPrice * (1 - Discount)) AS TotalRevenue,

    SUM(Quantity * UnitCost) AS TotalCost,

    SUM(Quantity * UnitPrice * (1 - Discount))
      - SUM(Quantity * UnitCost) AS TotalProfit,

    ROUND(
        100.0 *
        (
            SUM(Quantity * UnitPrice * (1 - Discount))
            - SUM(Quantity * UnitCost)
        )
        / NULLIF(SUM(Quantity * UnitPrice * (1 - Discount)), 0),
        2
    ) AS ProfitMarginPercentage

FROM dbo.SalesData_Clean;