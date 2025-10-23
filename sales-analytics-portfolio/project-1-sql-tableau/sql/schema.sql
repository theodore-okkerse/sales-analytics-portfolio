CREATE TABLE superstore (
    RowID INTEGER,
    OrderID TEXT,
    OrderDate TEXT,
    ShipDate TEXT,
    ShipMode TEXT,
    CustomerID TEXT,
    CustomerName TEXT,
    Segment TEXT,
    Country TEXT,
    City TEXT,
    State TEXT,
    PostalCode INTEGER,
    Region TEXT,
    ProductID TEXT,
    Category TEXT,
    SubCategory TEXT,
    ProductName TEXT,
    Sales REAL,
    Quantity INTEGER,
    Discount REAL,
    Profit REAL
);

CREATE TABLE products (
    ProductID TEXT PRIMARY KEY,
    Category TEXT,
    SubCategory TEXT,
    ProductName TEXT
);

CREATE TABLE customers (
    CustomerID TEXT PRIMARY KEY,
    CustomerName TEXT,
    Segment TEXT,
    Country TEXT,
    City TEXT,
    State TEXT,
    PostalCode TEXT,
    Region TEXT
);

CREATE TABLE orders (
    OrderID TEXT,
    OrderDate DATE,
    ShipDate DATE,
    ShipMode TEXT,
    CustomerID TEXT,
    ProductID TEXT,
    Sales REAL,
    Quantity INTEGER,
    Discount REAL,
    Profit REAL,
    PRIMARY KEY (OrderID, ProductID),
    FOREIGN KEY (CustomerID) REFERENCES customers(CustomerID),
    FOREIGN KEY (ProductID) REFERENCES products(ProductID)
);


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