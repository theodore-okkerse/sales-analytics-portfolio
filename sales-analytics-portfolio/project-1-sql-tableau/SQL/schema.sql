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

CREATE TABLE order_summary_cleaned (
	OrderID TEXT,
	OrderDate Text,ShipDate Text,
	CustomerName TEXT,
	Region TEXT,
	Segment TEXT,
	Category TEXT,
	SubCategory TEXT,
	TotalSales REAL,
	TotalProfit REAL,
	TotalQuantity INTEGER,
	ProfitMargin REAL,
	AvgDiscount REAL
);