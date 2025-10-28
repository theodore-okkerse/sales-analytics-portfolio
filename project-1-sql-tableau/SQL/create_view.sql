CREATE VIEW order_summary AS
SELECT
    o.OrderID AS OrderID,
    o.OrderDate AS OrderDate,
    o.ShipDate AS ShipDate,
    c.CustomerName AS CustomerName,
    c.Region AS Region,
    c.Segment AS Segment,
    p.Category AS Category,
    p.SubCategory AS SubCategory,
    SUM(o.Sales) AS TotalSales,
    SUM(o.Profit) AS TotalProfit,
    SUM(o.Quantity) AS TotalQuantity,
    ROUND(SUM(o.Profit) / NULLIF(SUM(o.Sales), 0), 3) AS ProfitMargin,
    ROUND(AVG(o.Discount), 3) AS AvgDiscount
FROM orders o
JOIN customers c ON o.CustomerID = c.CustomerID
JOIN products p ON o.ProductID = p.ProductID
GROUP BY
    o.OrderID,
    o.OrderDate,
    o.ShipDate,
    c.CustomerName,
    c.Region,
    c.Segment,
    p.Category,
    p.SubCategory