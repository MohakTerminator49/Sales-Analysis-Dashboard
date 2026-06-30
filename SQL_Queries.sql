CREATE TABLE Orders (
    Row_ID INT,
    Order_ID VARCHAR(20),
    Order_Date DATE,
    Ship_Date DATE,
    Ship_Mode VARCHAR(50),
    Customer_ID VARCHAR(20),
    Customer_Name VARCHAR(100),
    Segment VARCHAR(50),
    Country VARCHAR(50),
    City VARCHAR(50),
    State VARCHAR(50),
    Region VARCHAR(30),
    Product_ID VARCHAR(30),
    Category VARCHAR(50),
    Sub_Category VARCHAR(50),
    Product_Name TEXT,
    Sales FLOAT,
    Quantity INT,
    Discount FLOAT,
    Profit FLOAT
);

SELECT *
FROM Orders
WHERE Sales IS NULL;

SELECT Order_ID,
COUNT(*)
FROM Orders
GROUP BY Order_ID
HAVING COUNT(*)>1;

SELECT
SUM(Sales)
FROM Orders;

SELECT Product_Name,
SUM(Sales) AS Revenue
FROM Orders
GROUP BY Product_Name
ORDER BY Revenue DESC
LIMIT 10;

SELECT Region,
SUM(Sales)
FROM Orders
GROUP BY Region;

SELECT Category,
SUM(Profit)
FROM Orders
GROUP BY Category;

SELECT
MONTH(Order_Date),
SUM(Sales)
FROM Orders
GROUP BY MONTH(Order_Date);

SHOW TABLES;

SELECT COUNT(*) FROM Orders;

SELECT * FROM Orders LIMIT 5;

SELECT COUNT(*) FROM `sample - superstore`;

SELECT Category,
SUM(Profit)
FROM `sample - superstore`
GROUP BY Category;

SELECT Customer_Name,
SUM(Sales)
FROM Orders
GROUP BY Customer_Name
ORDER BY SUM(Sales) DESC
LIMIT 10;

SELECT *
FROM `sample - superstore`
WHERE Sales IS NULL;

SELECT Order_ID,
COUNT(*) AS Duplicate_Count
FROM `sample - superstore`
GROUP BY Order_ID
HAVING COUNT(*) > 1;

SELECT
SUM(Sales) AS Total_Sales
FROM `sample - superstore`;

SELECT
Product_Name,
SUM(Sales) AS Revenue
FROM `sample - superstore`
GROUP BY Product_Name
ORDER BY Revenue DESC
LIMIT 10;

SHOW COLUMNS FROM `sample - superstore`;

SELECT *
FROM `sample - superstore`
WHERE Sales IS NULL;

SELECT
SUM(Sales) AS Total_Sales
FROM `sample - superstore`;

SELECT
`Product Name`,
SUM(Sales) AS Revenue
FROM `sample - superstore`
GROUP BY `Product Name`
ORDER BY Revenue DESC
LIMIT 10;

SELECT
Region,
SUM(Sales) AS Total_Sales
FROM `sample - superstore`
GROUP BY Region
ORDER BY Total_Sales DESC;

SELECT
MONTH(STR_TO_DATE(`Order Date`,'%d-%m-%Y')) AS Month,
SUM(Sales) AS Total_Sales
FROM `sample - superstore`
GROUP BY MONTH(STR_TO_DATE(`Order Date`,'%d-%m-%Y'))
ORDER BY Month;

SELECT
`Customer Name`,
SUM(Sales) AS Total_Sales
FROM `sample - superstore`
GROUP BY `Customer Name`
ORDER BY Total_Sales DESC
LIMIT 10;

SELECT
`Product Name`,
SUM(Profit) AS Total_Profit
FROM `sample - superstore`
GROUP BY `Product Name`
ORDER BY Total_Profit DESC
LIMIT 10;

SELECT
State,
SUM(Sales) AS Total_Sales
FROM `sample - superstore`
GROUP BY State
ORDER BY Total_Sales DESC;

SELECT
Category,
ROUND(AVG(Discount),2) AS Average_Discount
FROM `sample - superstore`
GROUP BY Category;

SELECT
Segment,
SUM(Sales) AS Total_Sales,
SUM(Profit) AS Total_Profit
FROM `sample - superstore`
GROUP BY Segment
ORDER BY Total_Sales DESC;

SELECT
City,
SUM(Sales) AS Total_Sales
FROM `sample - superstore`
GROUP BY City
ORDER BY Total_Sales DESC
LIMIT 10;

SELECT
Category,
SUM(Quantity) AS Total_Quantity
FROM `sample - superstore`
GROUP BY Category
ORDER BY Total_Quantity DESC;

SELECT
`Product Name`,
SUM(Profit) AS Total_Profit
FROM `sample - superstore`
GROUP BY `Product Name`
HAVING SUM(Profit) < 0
ORDER BY Total_Profit ASC;

SELECT *
FROM `sample - superstore`
WHERE Sales IS NOT NULL;