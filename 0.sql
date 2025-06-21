USE walmat;

select * from Walmart_customer_purchases;

 --Total Number of Purchases (i.e., Rows in the Table)
 SELECT COUNT(*) AS Total_Purchases
FROM Walmart_customer_purchases;
--Count of Unique Customers (assuming a column like CustomerID)
SELECT COUNT(DISTINCT Customer_ID) AS Unique_Customers
FROM Walmart_customer_purchases;
--Count of Unique Products (assuming a column like ProductName or Product)
SELECT COUNT(DISTINCT Product_Name) AS Unique_Products
FROM Walmart_customer_purchases;
--Average Purchase Amount (assuming column like Amount or TotalAmount)
SELECT AVG(Purchase_Amount) AS Average_Purchase_Amount
FROM Walmart_customer_purchases;

--how many p[urcheses have ratings
SELECT 
  COUNT(*) AS Total_Purchases,
  SUM(CASE WHEN Discount_Applied > 0 THEN 1 ELSE 0 END) AS Discounted_Purchases,
  ROUND(SUM(CASE WHEN Discount_Applied > 0 THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) AS Discount_Percentage
FROM Walmart_customer_purchases;

---SQL Query to Count Males and Females
SELECT Gender, COUNT(*) AS Count
FROM Walmart_customer_purchases
GROUP BY Gender;

--Count of Transactions per Rating (Rating Distribution)
SELECT Rating, COUNT(*) AS Total_Reviews
FROM Walmart_customer_purchases
GROUP BY Rating
ORDER BY Rating;

