-- Total sales and profit by region
SELECT Region, 
       ROUND(SUM(Sales), 2) AS Total_Sales,
       ROUND(SUM(Profit), 2) AS Total_Profit
FROM ss.superstore_csv
GROUP BY Region
ORDER BY Total_Sales DESC;

-- Top 5 products by sales
SELECT Product_Name, 
       ROUND(SUM(Sales), 2) AS Sales_Total
FROM ss.superstore_csv
GROUP BY Product_Name
ORDER BY Sales_Total DESC
LIMIT 5;

-- Category-wise performance
SELECT 
  Category, 
  ROUND(SUM(Sales), 2) AS Total_Sales,
  ROUND(SUM(Profit), 2) AS Total_Profit,
  ROUND(SUM(Profit) / SUM(Sales) * 100, 2) AS Profit_Margin_Percent
FROM Orders
GROUP BY Category
ORDER BY Profit_Margin_Percent DESC;

-- Most Profitable and Top-Selling Products
SELECT
    product_name,
    SUM(sales) AS total_sales,
    SUM(profit) AS total_profit
FROM ss.superstore_csv
GROUP BY product_name
ORDER BY total_profit DESC, total_sales DESC;

-- Customer segment profitability
SELECT 
  Segment, 
  ROUND(SUM(Sales), 2) AS Total_Sales,
  ROUND(SUM(Profit), 2) AS Total_Profit,
  COUNT(DISTINCT Customer_ID) AS Customer_Count
FROM Orders
GROUP BY Segment
ORDER BY Total_Profit DESC;
