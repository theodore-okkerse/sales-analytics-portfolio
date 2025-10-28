--Total Sales by Year
SELECT 
    strftime('%Y', OrderDate) AS Year,
    SUM(TotalSales) AS Sales
FROM order_summary_cleaned
GROUP BY Year
ORDER BY Year;


--Total Profit by Category
SELECT 
    Category,
    SUM(TotalProfit) AS Profit
FROM order_summary_cleaned
GROUP BY Category
ORDER BY Profit DESC;


--Top 10 Customers by Total Sales
SELECT 
    CustomerName,
    SUM(TotalSales) AS Sales
FROM order_summary_cleaned
GROUP BY CustomerName
ORDER BY Sales DESC
LIMIT 10;


--Total Sales by Region
SELECT 
    Region,
    SUM(TotalSales) AS Sales
FROM order_summary_cleaned
GROUP BY Region
ORDER BY Sales DESC;


--Profit Margin by Segment
SELECT
    Segment,
    ROUND(SUM(TotalProfit)/SUM(TotalSales), 3) AS ProfitMargin
FROM order_summary_cleaned
GROUP BY Segment;
