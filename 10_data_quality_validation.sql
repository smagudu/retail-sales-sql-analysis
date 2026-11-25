
SELECT
    COUNT(*) AS TotalRecords,

    SUM(CASE WHEN OrderID IS NULL OR OrderID = ''
        THEN 1 ELSE 0 END) AS MissingOrderIDs,

    SUM(CASE WHEN OrderDate IS NULL
        THEN 1 ELSE 0 END) AS MissingOrderDates,

    SUM(CASE WHEN CustomerID IS NULL OR CustomerID = ''
        THEN 1 ELSE 0 END) AS MissingCustomerIDs,

    SUM(CASE WHEN Quantity IS NULL OR Quantity <= 0
        THEN 1 ELSE 0 END) AS InvalidQuantities,

    SUM(CASE WHEN UnitPrice IS NULL OR UnitPrice <= 0
        THEN 1 ELSE 0 END) AS InvalidUnitPrices,

    SUM(CASE WHEN UnitCost IS NULL OR UnitCost < 0
        THEN 1 ELSE 0 END) AS InvalidUnitCosts,

    SUM(CASE WHEN Discount IS NULL OR Discount < 0 OR Discount > 0.20
        THEN 1 ELSE 0 END) AS InvalidDiscounts

FROM dbo.SalesData_Clean;
