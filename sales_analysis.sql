SELECT * FROM ss.superstore_csv;
SELECT Region, ROUND(SUM(Sales), 2) AS Total_Sales, ROUND(SUM(Profit), 2) AS Total_Profit FROM ss.superstore_csv GROUP BY Region ORDER BY Total_Sales DESC;
SELECT product_name, SUM(sales) AS total_sales, SUM(profit) AS total_profit FROM ss.superstore_csv GROUP BY product_name ORDER BY total_profit DESC, total_sales DESC LIMIT 5;
SELECT DATE_FORMAT(Order_Date, '%Y-%m') AS Month, ROUND(SUM(Sales), 2) AS Monthly_Sales FROM ss.superstore_csv GROUP BY Month ORDER BY Month;
SELECT YEAR(Order_Date) AS Year, ROUND(SUM(Sales), 2) AS Total_Sales, ROUND(SUM(Profit), 2) AS Total_Profit FROM ss.superstore_csv GROUP BY Year ORDER BY Year;
SELECT Category, ROUND(SUM(Sales), 2) AS Total_Sales, ROUND(SUM(Profit), 2) AS Total_Profit, ROUND(SUM(Profit) / SUM(Sales) * 100, 2) AS Profit_Margin_Percent FROM ss.superstore_csv GROUP BY Category ORDER BY Profit_Margin_Percent DESC;
SELECT category, sub_category, SUM(profit) AS total_profit FROM ss.superstore_csv GROUP BY category, sub_category ORDER BY total_profit DESC;
SELECT Segment, ROUND(SUM(Sales), 2) AS Total_Sales, ROUND(SUM(Profit), 2) AS Total_Profit, COUNT(DISTINCT Customer_ID) AS Customer_Count FROM ss.superstore_csv GROUP BY Segment ORDER BY Total_Profit DESC;