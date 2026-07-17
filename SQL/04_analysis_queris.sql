/*Project : Retail Sales Analysis using MySQL
Student : S Gargi 
Course  : BBA Business Analytics*/
/*Business Problem 1
Question:
How many orders are there in the dataset?*/

SELECT COUNT(*) AS Total_Orders
FROM sales_data;

*/Business Problem 2
Question:
What is the total sales amount?*/

SELECT SUM(Sales_Amount) AS Total_Sales
FROM sales_data;

/*Business Problem 3
Question:
What is the total profit?*/

SELECT SUM(Profit) AS Total_Profit
FROM sales_data;

/* Business Problem 4
   Question:
   What is the average sales amount per order?
*/

SELECT AVG(Sales_Amount) AS Average_Order_Value
FROM sales_data;

/* Business Problem 5
   Question:
   Which product categories generate the highest total sales revenue?
*/

SELECT Product_Category,
       SUM(Sales_Amount) AS Total_Sales
FROM sales_data
GROUP BY Product_Category
ORDER BY Total_Sales DESC;

/* Business Problem 6
   Question:
   Which regions generate the highest total profit?
*/

SELECT Region,
       SUM(Profit) AS Total_Profit
FROM sales_data
GROUP BY Region
ORDER BY Total_Profit DESC;

/* Business Problem 7
   Question:
   Which payment methods are used the most?
*/

SELECT Payment_Method,
       COUNT(*) AS Number_of_Transactions
FROM sales_data
GROUP BY Payment_Method
ORDER BY Number_of_Transactions DESC;

/* Business Problem 8
   Question:
   Which customer segment generates the highest total sales?
*/

SELECT Customer_Segment,
       SUM(Sales_Amount) AS Total_Sales
FROM sales_data
GROUP BY Customer_Segment
ORDER BY Total_Sales DESC;

/* Business Problem 9
   Question:
   Display all customers from Bengaluru.
*/
SELECT *
FROM sales_data
WHERE Customer_City = 'Bengaluru';


/* Business Problem 10
   Question:
   Display all orders with Sales Amount greater than ₹100,000.
*/
SELECT Customer_Name,
       Product_Name,
       Sales_Amount
FROM sales_data
WHERE Sales_Amount > 100000;


/* Business Problem 11
   Question:
   Display all customers from Delhi or Jaipur.
*/
SELECT *
FROM sales_data
WHERE Customer_City = 'Delhi'
   OR Customer_City = 'Jaipur';


/* Business Problem 12
   Question:
   Display all delivered orders.
*/
SELECT *
FROM sales_data
WHERE Delivery_Status = 'Delivered';


/* Business Problem 13
   Question:
   Display all returned products.
*/
SELECT Customer_Name,
       Product_Name,
       Return_Status
FROM sales_data
WHERE Return_Status = 'Returned';

/* Business Problem 14
   Question:
   Display customers from Bengaluru whose sales amount is greater than ₹100,000.
*/

SELECT Customer_Name,
       Customer_City,
       Sales_Amount
FROM sales_data
WHERE Customer_City = 'Bengaluru'
AND Sales_Amount > 100000;


/* Business Problem 15
   Question:
   Display all orders paid using UPI or Credit Card.
*/

SELECT *
FROM sales_data
WHERE Payment_Method IN ('UPI', 'Credit Card');


/* Business Problem 16
   Question:
   Display orders with sales amount between ₹50,000 and ₹150,000.
*/

SELECT Customer_Name,
       Product_Name,
       Sales_Amount
FROM sales_data
WHERE Sales_Amount BETWEEN 50000 AND 150000;


/* Business Problem 17
   Question:
   Display the list of unique brands available in the dataset.
*/

SELECT DISTINCT Brand
FROM sales_data;


/* Business Problem 18
   Question:
   Display customers whose names start with the letter 'A'.
*/

SELECT Customer_Name,
       Customer_City
FROM sales_data
WHERE Customer_Name LIKE 'A%';


/* Business Problem 19
   Question:
   Which product categories have the highest number of orders?
*/

SELECT Product_Category,
       COUNT(*) AS Total_Orders
FROM sales_data
GROUP BY Product_Category
ORDER BY Total_Orders DESC;


/* Business Problem 20
   Question:
   Which brands generate the highest total sales revenue?
*/

SELECT Brand,
       SUM(Sales_Amount) AS Total_Sales
FROM sales_data
GROUP BY Brand
ORDER BY Total_Sales DESC;


/* Business Problem 21
   Question:
   Which stores generate the highest total profit?
*/

SELECT Store_Name,
       SUM(Profit) AS Total_Profit
FROM sales_data
GROUP BY Store_Name
ORDER BY Total_Profit DESC;


/* Business Problem 22
   Question:
   How many orders fall under each delivery status?
*/

SELECT Delivery_Status,
       COUNT(*) AS Total_Orders
FROM sales_data
GROUP BY Delivery_Status
ORDER BY Total_Orders DESC;


/* Business Problem 23
   Question:
   How many products were returned and not returned?
*/

SELECT Return_Status,
       COUNT(*) AS Total_Returns
FROM sales_data
GROUP BY Return_Status;

/* Business Problem 24
   Question:
   Which product categories have generated total sales greater than ₹500,000?
*/

SELECT Product_Category,
       SUM(Sales_Amount) AS Total_Sales
FROM sales_data
GROUP BY Product_Category
HAVING SUM(Sales_Amount) > 500000;


/* Business Problem 25
   Question:
   Display the top 5 customers based on total sales amount.
*/

SELECT Customer_Name,
       SUM(Sales_Amount) AS Total_Sales
FROM sales_data
GROUP BY Customer_Name
ORDER BY Total_Sales DESC
LIMIT 5;


/* Business Problem 26
   Question:
   Categorize orders based on sales amount.
*/

SELECT Customer_Name,
       Sales_Amount,
       CASE
           WHEN Sales_Amount >= 150000 THEN 'High Sales'
           WHEN Sales_Amount >= 75000 THEN 'Medium Sales'
           ELSE 'Low Sales'
       END AS Sales_Category
FROM sales_data;


/* Business Problem 27
   Question:
   Which customer segments have an average sales amount greater than ₹100,000?
*/

SELECT Customer_Segment,
       AVG(Sales_Amount) AS Average_Sales
FROM sales_data
GROUP BY Customer_Segment
HAVING AVG(Sales_Amount) > 100000;


/* Business Problem 28
   Question:
   Which payment method generated the highest total sales?
*/

SELECT Payment_Method,
       SUM(Sales_Amount) AS Total_Sales
FROM sales_data
GROUP BY Payment_Method
ORDER BY Total_Sales DESC
LIMIT 1;


/* Business Problem 29
   Question:
   Which region has the highest average profit per order?
*/

SELECT Region,
       AVG(Profit) AS Average_Profit
FROM sales_data
GROUP BY Region
ORDER BY Average_Profit DESC;


/* Business Problem 30
   Question:
   Display the top 10 most profitable orders.
*/

SELECT Order_ID,
       Customer_Name,
       Product_Name,
       Profit
FROM sales_data
ORDER BY Profit DESC
LIMIT 10;